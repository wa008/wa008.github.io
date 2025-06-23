---
title: LLM fine-tune experience
tags: [LLM, find-tune]
categories: [LLM]
comments: true
---

Personal experience
- care the changing of loss/reward and test dataste performance, ensure they change with same trend, otherwise, reward hacking / invalid loss function appear
- adjust learning-rate and regularization penalty by changing of loss with training steps
- verfy idea with pure comparing experiment (scientific control)
- retry same experiment to exclude influence of random
- only change hyper-parameter when training process doesn't work well
- make llm output process before output final answer
- try to process regulazation by code rather than in prompt as much as possible