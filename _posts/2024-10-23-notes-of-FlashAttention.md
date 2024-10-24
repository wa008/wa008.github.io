---
title: Notes of flash-attention
tags: [flash-attention, LLM, attention]
math: true
comments: true
---

## Backgroud

There are two common kinds of bound which limited the speed of training in deep learning.
+ Memeory-bound: time spent on memeory-access is bottlenecked
+ Computation-bound: time spent on computation is bottlenecked

## Introduction

Inspiration: just tiling?

Description: Split the `Q`, `K`, `V` into blocks and calculate output matrice `O` by block to avoid the store of softmax intermediate matrice which has size of `seq_len * seq_len` in HBM memory, which reduce the memory-bound, as a result, required memeroy of attention is almost linearly with senquence length of sentence.

![scalability](/images/2024/10/23-01.png){: width="800"}

Novelty: Making attention memory-efficient

## Benefits

1) Faster model training, due to use SRAM more?

2) Higher quality modles in long sequence tasks.

3) New benchmarking attention, both faster and memory-efficient than existing attention method (2022.5)

4) Block-Sparse, only compute for no-zero block for attention_mask

## Further information

1) Algorithm

![Algorithm](/images/2024/10/23-02.png){: width="600"}

2) Flash-attention has higher FLOP count compared to standard attention but is still faster because attention is memory-access-bound and falsh-attention has fewer HBM accesses.

## Not finished 

+ Math about how to recalculate backward grad

## Summary

1) Purpose of auther?

Using blocks method to make memory-bound network memroy-efficient and faster

2) Key of new method?

Using block to avoid the store of large softmax attention maxtrice.

3) What is useful for me?

Using block to trade-off between memory and computation, which can be use based on memory-bound or computation-bound

4) What references is necessary to read?
+ [Reformer: The Efficient Transformer](https://arxiv.org/abs/2001.04451): sparse-approximation to reduce the computation and memory requirements
+ [Rethinking Attention with Performers](https://arxiv.org/abs/2009.14794): low-rank approximation to do same thing

5) new idea

What is the bottleneck right now, memory or computation? what is it for different models or module parts?