---
title: LLM Post-Training experience
tags: [LLM, find-tune, prompt]
categories: [LLM]
comments: true
pin: true
---

## Prompt
Prompt is the most direct way to influence response, tips for good prompt:
- Clear instruction about our demand
- Provide necessary context, role, tone, format
- guide LLM output reasoning process before final answer
- More instructions, less constraints
- Exampler can ensure the constructure is as same as example

The purpose of prompt in post-training is building best reasoning architecture in response, training could optimize other detailed contents in response

## One shot learning
- One example in prompt (one shot) can ensure output architecture is as same as example. 
- In binary-class tasks, one example probably result in answer trend to that in example.
- In binary-class tasks, two examples probably result in unstable of answer. 

## Experience / Conclusion
- Model size of model to train is related with information volume of datasets
    - Larger model need more information volum to fine-tune 
    - We can use small-size model to test whether the solution is feasible with low cost
- Smaller model has better stability of response
- Amount of data is positively correlated with model performance
- Quality of data is positively correlated with model performance

## Training process
The purpose of training is to ensure performance on test dataset increase in stable trend and range. 
- ensure the loss/reward curve and performance on test dataset change with same trend
    - If performance of test dataset don't increase as expected, overfitting / reward hacking occur. 
    - If loss cannot reduce as expected, there is something wrong in training dataset
- adjust learning-rate and regularization penalty by observing loss curve with training steps
    - If loss decreased slowly, raise LR. If loss curve is unstable, lower LR.
    - When overfitting occur, raise regularization penalty. If loss can not increase in late stages, try to lower it.
- verify idea with pure control experiment
- retry total same experiment to exclude influence of random
- make LLM output intermediate reasoning process before output final answer
- For specific task, put as much logit as in rule rather than in prompt if possible
- Thinking rewrad is valid and necessary in RL
- model reward even multi model reward is helpful in RL

## Multi-stage training 
The purpose of dataset is to provide information to model to learn, in the late stages, model already know more than before, more extra information should be sent to model. So, in the late stage, we should increase information diversity

How to increase information diversity:
- put hard samples in late training stages
- increase temperature in late training stages for GRPO
- select samples which have unstable results for GRPO


## Reference
- [Google prompt engineering](https://drive.google.com/file/d/1AbaBYbEa_EbPelsT40-vj64L-2IwUJHy/view)
- [Six Key Elements of AI Agent Prompt Engineering](https://cobusgreyling.medium.com/six-key-elements-of-ai-agent-prompt-engineering-d33a1ff89890)