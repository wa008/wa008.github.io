---
title: Papers I readed recently about LLM application
tags: [LLM, paper, LLM appcalition]
categories: [LLM]
comments: true
---

How much do LLM memorize? 

- key definition
  - unintended memorization: memorize a specific dataset
  - generalization (intended memorization): contains about the true data-generation process
  - calculation method: by information entropy and mutual information
- double desent appear on the changing points from unintended memorization into generalization
- GPT-models store 3.6bits data per parameters
- value of float32 is 9% higher than float16



Scaling LLM Test-Time Compute Optimally can be More Effective than Scaling Model Parameters

- trade-off between pre-train model size and inference-time(inference length)
- performance can ouperform 14x size model
- performance is better in easy and medium problem, judge easy, medium or hard question based on the pass rate
- two ways to increase inference-compute-time
  - best-of-N: sample N outputs parallel and choose the best one based on learned verifier or reward function. 
  - revise response: revise original response


Prolonged Reinforcement Learning

- tempurature: increase tempurate to avoid entropy collapse
- decoupled clip to increase exploration space
- dynamic sampling: erase all truely right or wrong samples
- calculate loss from sample level into token level -- DAPO
- KL-regularization and reference model reset



illusion of thinking

- for hanio tasks
  - lower performance in simple-level question for reasoning model than general mdoel because it get wrong answer when thinking even already get correct answer [over thinking]
  - better performance in medium-level question
  - zero-performance in hard question



Gemini 2.5 tech report

- dataset
  - ensure dataset quality
  - fliter and drop duplicates
- post-training
  - verifiable reward and model-base generative rewards to provide sophisticated and scaleable feedback signals
    - verifiable reward
    - model-base: *more sophisticated and scaleable feedback signals*
  - update LR-method to improve the stability of training
  - result: learning in complex space