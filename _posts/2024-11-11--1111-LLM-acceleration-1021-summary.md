---
title: LLM acceleration
tags: [LLM, fine-tune, acceleration]
math: true
comments: true
---

## Papers

This shows all information I collected about LLM acceleration

| category              | paper                                                        | published | importance | progress | tags                |
| --------------------- | ------------------------------------------------------------ | --------- | ---------- | -------- | ------------------- |
| summary               | [fast attention collection](https://ben.bolte.cc/fast-attention) | Jun 2023  | 70         | 100%     |                     |
| low-rank              | [LoRA](https://arxiv.org/abs/2106.09685):  Low-Rank of large matrices when fine-tune, [note](https://informal.top/posts/paper-LoRA/) | Jun 2021  | 70         | 70%      | fine-tune, low-rank |
| low-rank              | [Linformer](https://arxiv.org/abs/2006.04768): SVD decomposition for large QKV projection matrices to reduce required memory | Jun 2020  |            | 30%      |                     |
| low-rank              | [Rethinking Attention with Performers](https://arxiv.org/abs/2009.14794): low-rank projection | Sep 2020  |            | 30%      |                     |
| block                 | xformer - [FlashAttention](https://arxiv.org/abs/2205.14135): Matrices multiplication by blocks, [note](https://informal.top/posts/notes-of-FlashAttention/) | 2022 May  | 70         | 70%      |                     |
| block                 | xformer - [Self-attention Does Not Need O(n2) Memory](https://arxiv.org/abs/2112.05682): attention calculation with blocks | Dec 2021  | 70         | 70%      |                     |
| special valule        | unsloth - [Fast Cross Entropy Loss](https://informal.top/posts/validated-example/) | Dec 2023  | 70         | 100%     |                     |
| Matrix Multiplication | unsloth - [Matrix Multiplication](https://informal.top/posts/try-of-torchview-to-accelerate-finetune-new/) | Dec 2023  | 70         | 100%     |                     |
| RNN                   | [Linear Transformer](https://arxiv.org/pdf/2006.16236): express attention as an RNN |           |            | 10%      |                     |
| RNN                   | [RWKV](https://arxiv.org/abs/2404.05892): RWKV is an RNN with transformer-level LLM performance |           |            | 10%      |                     |
|                       | [An Attention Free Transformer](https://arxiv.org/abs/2105.14103) |           |            | 0%       |                     |
| PE                    | [RoPE](https://arxiv.org/abs/2104.09864)                     |           |            | 0%       |                     |
| complie               | [trition](https://github.com/triton-lang/triton)             |           | 70         | 0%       |                     |
| LoRA                  | Measuring the Intrinsic Dimension of Objective Landscapes    |           |            | 0%       |                     |
| LoRA                  | Intrinsic Dimensionality Explains the Effectiveness of Language Model Fine-Tuning |           |            | 0%       |                     |

## Other reference

type conversion

+ [Reduce  data upcasting](https://unsloth.ai/blog/mistral-benchmark)
+ [Bitsandbytes  bfloat16](https://unsloth.ai/blog/mistral-benchmark)
