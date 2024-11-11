---
title: LLM acceleration
tags: [LLM, fine-tune, acceleration]
math: true
comments: true
---

## Summary

### method

there two main method to acclerate

+ low-rank: reduce dimension of matrix
+ block: compute matrix with blcok

and another tricky method

### reference

[fast attention collection](https://ben.bolte.cc/fast-attention)

## Papers

### low-rank

#### [LoRA](https://arxiv.org/abs/2106.09685)

Low-Rank of large matrices when fine-tune

informaiton
+ Jun 2021
+ 70%
+ [note](https://informal.top/posts/paper-LoRA/)

reference
+ Measuring the Intrinsic Dimension of Objective Landscapes
+ Intrinsic Dimensionality Explains the Effectiveness of Language Model Fine-Tuning

#### [Linformer](https://arxiv.org/abs/2006.04768)

SVD decomposition for large QKV projection matrices to reduce required memory

#### [Performers](https://arxiv.org/abs/2009.14794)

low-rank projection with a novel method named FAVOR

### block

#### [FlashAttention](https://arxiv.org/abs/2205.14135)

Matrices multiplication by blocks

+ [note](https://informal.top/posts/notes-of-FlashAttention/)
+ May 2020
+ 70%

#### [Self-attention Does Not Need O(n2) Memory](https://arxiv.org/abs/2112.05682)

attention calculation with blocks

+ Dec 2021

### RNN

#### [RWKV](https://arxiv.org/abs/2404.05892)

RWKV is an RNN with transformer-level LLM performance

#### [An Attention Free Transformer](https://arxiv.org/abs/2105.14103)

### PE

#### [RoPE](https://arxiv.org/abs/2104.09864)

### complie

#### [trition](https://github.com/triton-lang/triton)

### unsloth

#### [Fast Cross Entropy Loss](https://informal.top/posts/validated-example/)

#### [Matrix Multiplication](https://informal.top/posts/try-of-torchview-to-accelerate-finetune-new/)

### type conversion

#### [Reduce  data upcasting](https://unsloth.ai/blog/mistral-benchmark)

#### [Bitsandbytes  bfloat16](https://unsloth.ai/blog/mistral-benchmark)