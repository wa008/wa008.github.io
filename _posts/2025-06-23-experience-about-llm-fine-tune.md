---
title: LLM Post-Training experience
tags: [LLM, find-tune, prompt]
categories: [LLM]
comments: true
pin: true
---

## Prompt
Prompt is always the first step whatever you want to do with LLM, including daily basic usage, solving professional quesiton, building commercial product and post-training. 
Basic skills are helpful to let LLM response better result. 
- Clear instruction for task
- Context
- Role, Tone, Format
- Output reasoning process before final answer
- More instructions, less constraints
- Upgrade prompts from common to specific
- Exampler can ensure the constructure is as same as what you want

reference: 
- [Google prompt engineering](https://drive.google.com/file/d/1AbaBYbEa_EbPelsT40-vj64L-2IwUJHy/view)
- [Six Key Elements of AI Agent Prompt Engineering](https://cobusgreyling.medium.com/six-key-elements-of-ai-agent-prompt-engineering-d33a1ff89890)

## Post-Training / Fine-tune
- ensure the loss/reward curve and performance on test dataset change with same trend, otherwise reward hacking / overfitting appear
- adjust learning-rate and regularization penalty by observing loss curve with training steps
- verify idea with pure comparing experiment (scientific control)
- retry same experiment to exclude influence of random
- only change hyper-parameter when training process doesn't work well
- make LLM output intermediate reasoning process before output final answer
- For specific task, put as much logit as in rule rather than in prompt if possible
