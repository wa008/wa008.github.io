---
title: LLM fine-tune experience
tags: [LLM, find-tune]
categories: [LLM]
comments: true
pin: true
---

Personal experience
- ensure the loss/reward curve and performance on test dataset change with same trend, otherwise reward hacking / overfitting appear
- adjust learning-rate and regularization penalty by observing loss curve with training steps
- verify idea with pure comparing experiment (scientific control)
- retry same experiment to exclude influence of random
- only change hyper-parameter when training process doesn't work well
- make LLM output intermediate reasoning process before output final answer
- For specific task, put as much logit as in rule rather than in prompt if possible

