---
title: LLM acceleration
tags: [LLM, fine-tune, acceleration]
math: true
comments: true
---

## Summary

### method

There are two main methods to acclerate LLM
+ low-rank: reduce dimension of matrix
+ block: compute matrix with block

and another tricky methods

### reference
+ [fast attention collection](https://ben.bolte.cc/fast-attention)
+ [unsloth](https://unsloth.ai/blog/mistral-benchmark)

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
+ Jun 2020
+ 30%

#### [Performers](https://arxiv.org/abs/2009.14794)

low-rank projection with a novel method named FAVOR
+ Sep 2020
+ 10%

### block

#### [FlashAttention](https://arxiv.org/abs/2205.14135)

Matrices multiplication by blocks

+ [note](https://informal.top/posts/notes-of-FlashAttention/)
+ May 2020
+ 70%

#### [Self-attention Does Not Need O(n2) Memory](https://arxiv.org/abs/2112.05682)

attention calculation with blocks

+ Dec 2021
+ 70%

### unsloth
+ [Fast Cross Entropy Loss](https://informal.top/posts/validated-example/)
+ [Matrix Multiplication](https://informal.top/posts/try-of-torchview-to-accelerate-finetune-new/)

## To Read

### RNN

+ [RWKV](https://arxiv.org/abs/2404.05892): RWKV is an RNN with transformer-level LLM performance
+ [An Attention Free Transformer](https://arxiv.org/abs/2105.14103)

### PE

[RoPE](https://arxiv.org/abs/2104.09864)

### complie

[trition](https://github.com/triton-lang/triton)

### type conversion
+ [Reduce data upcasting](https://unsloth.ai/blog/mistral-benchmark)
+ [Bitsandbytes bfloat16](https://unsloth.ai/blog/mistral-benchmark)

### other new paper
+ New Solutions on LLM Acceleration, Optimization, and Application
+ [awesome LLM system](https://github.com/galeselee/Awesome_LLM_System-PaperList?tab=readme-ov-file)
+ [FlashDecoding++: Faster Large Language Model Inference on GPUs](https://arxiv.org/abs/2311.01282)
+ Hardware Acceleration of LLMs: A comprehensive survey and comparison
+ nips
    + https://openreview.net/forum?id=OuQYWNuNxm
    + https://nips.cc/virtual/2024/poster/94605
    + https://nips.cc/virtual/2024/poster/96404
    + https://nips.cc/virtual/2024/poster/96619
    + https://nips.cc/virtual/2024/poster/93106
+ iclr
    + [iceformer](https://iclr.cc/virtual/2024/poster/19389)
    + Sheared LLaMA
+ ICML
    + https://icml.cc/virtual/2024/poster/34133
    + https://icml.cc/virtual/2024/poster/32874
    + https://icml.cc/virtual/2024/poster/33254