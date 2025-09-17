---
title: AutoSwitch Translate
tags: [Weekly]
comments: true
math: true
pin: false
---

## Product
### [AutoSwitch Translate](https://github.com/wa008/AutoSwitchTranslate)
Final make this extension, which can automatically switch target language when source language is same with target language. 

What surprised me was I only spen half day to program and build this extension, which inspired to do it immediately after have a new idea, this will be the best experience not only for result but also for my satisfaction. 

This can save lots of time when using Goole Translate. In addition, I can totally transfer from baidufanyi to Google Translate. 

### [PopTranslate](https://github.com/wa008/PopTranslate)
Found the API used in Google Translate extension and use it in my extension, maybe it's not a nice behavior. 

It works well in for five days, hope it works for a long time. 

### Triton
I want to do more about Triton, here is all what I can think
```
* rewrite or improve current kernel
    * flash attention
    * cut cross entropy 
    * CE
* analysis time and memory cost of kernel 
    * compare different model and framework [H]
        * Unsloth 
        * Deepseed
        * TensorRT-LLM
        * vLLM
        * Liger-Kernel 
        * Flash-attention 
        * xformers
        * DeepSeek
            * MoE
            * electricity 
            * MLA
            * MTP
            * fp8
    * dimensions
        * fine-tune 
        * inference 
    * improve and test 
* architecture ability
    * cuda 
    * llama.cpp
```
As a result, I will try [Pytroch profiler](https://pytorch.org/tutorials/recipes/recipes/profiler_recipe.html) at first, there will be more thing in it I can do. 

In addition, Found [a good post](https://salykova.github.io/sgemm-gpu) about matrix multiplication, try to do it by Triton.

### English
+ Podcast: Do not weel, I need more patience. 
+ Read and comment: as above. 
+ Books: Read more on first language

## Summary

1) Do it as soon as possible after having a new idea.

2) I always travel in a loop between hope and disappointment, maybe this is the life. 

## This week
- [ ] Triton
- [x] Update PopTranslate
- [x] Google translate extension
- [ ] English
- [x] Exercise

## Next week
- [ ] Triton
- [ ] English
- [ ] Reading