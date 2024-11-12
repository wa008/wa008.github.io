---
title: LLM acceleration
tags: [LLM, fine-tune, acceleration]
math: true
comments: true
---

## Summary

### Methods

There are two main methods to acclerate LLM
+ low-rank: reduce dimension of matrix
+ block: compute matrix with block

and another tricky methods

### Reference
+ [fast attention collection](https://ben.bolte.cc/fast-attention)
+ [unsloth](https://unsloth.ai/blog/mistral-benchmark)
+ [awesome LLM system](https://github.com/galeselee/Awesome_LLM_System-PaperList)

## Categories

### Low-rank

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

### Block

#### [FlashAttention](https://arxiv.org/abs/2205.14135)

Matrices multiplication by blocks

+ [note](https://informal.top/posts/notes-of-FlashAttention/)
+ May 2020
+ 70%

#### [Self-attention Does Not Need O(n2) Memory](https://arxiv.org/abs/2112.05682)

attention calculation with blocks

+ Dec 2021
+ 70%

### Basic
+ [Fast Cross Entropy Loss](https://informal.top/posts/validated-example/)
+ [Matrix Multiplication](https://informal.top/posts/try-of-torchview-to-accelerate-finetune-new/)
+ [Reduce data upcasting](https://unsloth.ai/blog/mistral-benchmark)
+ [Bitsandbytes bfloat16](https://unsloth.ai/blog/mistral-benchmark)

### Parallelization

**New Solutions on LLM Acceleration, Optimization, and Application**

1) Medusa: output top-k predictions for next multiple positions parallelly through adding LM heads for next several positons, which can reduce inference latency.

![scalability](/images/2024/1112-01.png){: width="800"}

2) SnapKV: compress KV cacha for long sequence tasks


## To Read

softmax / basic
+ [FlashDecoding++: Faster Large Language Model Inference on GPUs](https://arxiv.org/abs/2311.01282)

Hardware
+ [trition](https://github.com/triton-lang/triton)
+ Hardware Acceleration of LLMs: A comprehensive survey and comparison

Basic
+ Accelerating Relative Entropy Coding with Space Partitioning

MoE
+ SwitchHead: Accelerating Transformers with Mixture-of-Experts Attention

backprog
+ DropBP: Accelerating Fine-Tuning of Large Language Models by Dropping Backward Propagation

Long sequence
+ IceFormer: Accelerated Inference with Long-Sequence Transformers on CPUs

Pruning
+ Sheared LLaMA: Accelerating Language Model Pre-training via Structured Pruning

2:4
+ Accelerating Transformer Pre-training with 2:4 Sparsity

parameter
+ Inference with Reference: Lossless Acceleration of Large Language Models

trade-off
+ AWQ: Activation-aware Weight Quantization for On-Device LLM Compression and Acceleration

cache
+ Dynamic Memory Compression: Retrofitting LLMs for Accelerated Inference

PE
+ [RoPE](https://arxiv.org/abs/2104.09864)

RNN
+ [RWKV](https://arxiv.org/abs/2404.05892): RWKV is an RNN with transformer-level LLM performance
+ [An Attention Free Transformer](https://arxiv.org/abs/2105.14103)
