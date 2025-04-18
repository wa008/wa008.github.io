---
layout: default
title: duckdb 看懂的第一个PR
---

# 背景

duckdb 是关注到的第一个我自己平常能用到，也不是那么（四声）庞大的开源项目，刚好最近想尝试新的技术，所以就深入了解了一下。

duckdb对我的用法，就是能以本地文件为数据源，用sql语言进行查询、分析数据；平常类似的需求我都用python来解决，但远没有sql来的高效，所以duckdb还是很好地提升了我的工作效率。

第一次看duckdb issue 的时候就看到了[这个](https://github.com/duckdb/duckdb/issues/9002)，比较简单的一个bug，有人最小化复现了这个问题，就是使用 map 时，where 的限制条件无法对 map 字段生效，比如：

```
create table data as from (
  values
  ([1], [3]),
  ([2], [9]),
  ([3], [15]),
  ([4], [21]),
) as t(l, r);

-- this works
select l[1], r[1], map(l, r) from data;

-- map output ignores where filter.
select l[1], r[1], map(l, r) from data where r[1] != 15;
```

Output:

```
┌───────┬───────┬───────────────────────┐
│ l[1]  │ r[1]  │       map(l, r)       │
│ int32 │ int32 │ map(integer, integer) │
├───────┼───────┼───────────────────────┤
│     1 │     3 │ {1=3}                 │
│     2 │     9 │ {2=9}                 │
│     3 │    15 │ {3=15}                │
│     4 │    21 │ {4=21}                │
└───────┴───────┴───────────────────────┘


┌───────┬───────┬───────────────────────┐
│ l[1]  │ r[1]  │       map(l, r)       │
│ int32 │ int32 │ map(integer, integer) │
├───────┼───────┼───────────────────────┤
│     1 │     3 │ {1=3}                 │
│     2 │     9 │ {2=9}                 │
│     4 │    21 │ {3=15}                │
└───────┴───────┴───────────────────────┘
```

当时我只是挑了几个好上手 & 有趣的issue，就放下这事儿了，打算一周后有时间了再来看看怎么修复，但一周后再来看的时候，这个issue已经被人修复了，过来然开源社区的活跃度还是太强了。

想解决其他的issue，但看了半天都没有头绪。。。。于是就想看看当时这个map的issue是怎么解决的，看了半天也还是看不懂，就花了大概两个周末的时间研究了一下（一共可能花了1天），截止现在，终于看懂了核心内容。

# 历程

中间主要在 debug，想看看每个变量内具体的内容是什么，帮助理解代码，然后也就知道bug在哪儿，自然就知道怎么修复了。

duckdb 比较好的点是，没有依赖什么外部模块，花了点时间修了一个环境问题，我一次性就编译成功了。

进入主目录之后，执行 `make debug` 进行编译，`./build/debug/duckdb` 就是新编译好的文件，执行这个文件就进入了新编译的 duckdb中。

代码里可以用 `printf` 打印想要的debug日志，debug过程还比较顺利，能把 debug 信息打印出来，我就有信心能看懂这个代码了。

debug过程中，主要是在找哪个变量里存储的是核心的数据，过程中主要很多变量不知道要怎么打印，代码自定义了很多基础的类，需要翻代码，特别是 Vector 变量，还是个指针

[`Vector`](https://github.com/duckdb/duckdb/blob/812c4a9a94a760cb531b3c66bb9efa8e54d46e8c/src/include/duckdb/common/types/vector.hpp)：自定义的向量类型，可以通过 `*(vector.GetData() + i)`打印第 i 个元素的值；通过 `vector.GetType().ToString().c_str()` 打印type

Vector 还指定了不同的数据类型，我暂时还不知道要怎么按照特定类型打印，默认是 unsigned int8 类型，指针每次 +1 只移动 8 个字节。

# PR

先说结论，其实核心就是最后的四行代码

```
if (key_vector.GetVectorType() == VectorType::CONSTANT_VECTOR) {
    // 省略
    map_key_vector.Reference(expanded_const);
    value_vector.Flatten(count);
    map_value_vector.Reference(ListVector::GetEntry(value_vector));
} else if (value_vector.GetVectorType() == VectorType::CONSTANT_VECTOR) {
    // 省略
    map_value_vector.Reference(expanded_const);
    key_vector.Flatten(count);
    map_key_vector.Reference(ListVector::GetEntry(key_vector));
} else {
    // 核心变更
    key_vector.Flatten(count); // 对 key_vector 根据filter信息进行截断
    value_vector.Flatten(count); // 对 key_vector 根据filter信息进行截断
    map_value_vector.Reference(ListVector::GetEntry(value_vector)); // 把中间结果 value_vector 复制给最终结果 map_value_vector
    map_key_vector.Reference(ListVector::GetEntry(key_vector)); // 把中间结果 key_vector 复制给最终结果 map_key_vector
}
```

第一次接触类似项目的人（两周前的我），很难看懂这四行代码对应的含义，我也是花了很久的时间定位到这里的。

# 结论

第一次完整看懂了一个 cpp 项目的PR，了解了完整的流程，比如 编译、debug、测试。

但除了核心数据，大部分的代码工作量都在补全其他类型的变量，这些需要对项目非常熟悉，才能补充的比较完整，需要对项目非常熟悉才行。
