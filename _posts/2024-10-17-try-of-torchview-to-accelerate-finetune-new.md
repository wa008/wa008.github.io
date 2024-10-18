---
title: Acceleration of LLM - Matrix Multiplication
tags: [LLM, acceleration, Matrix multiplication, torchview]
math: false
---


## Background


After read "Manual Autograd" in [unsloth's blog](https://unsloth.ai/blog/mistral-benchmark), I try to parse model and found more related point where we can optimize.

[torchview](https://github.com/mert-kurttutan/torchview) is a great similar tool to use.


## torchview


### what torchview can do


I want to show what torchview can do after I try it.

1. Model: torchview can parse model when inferencing and training, it support mlp, bert, Gemma, llama3.2.
2. Node: the [smallest node](https://github.com/mert-kurttutan/torchview/blob/main/torchview/computation_node/compute_node.py) is tensor, module(like attention), function(like nn.funtion).
3. Shape: show the input shape and output shape for every basic node.
4. Edge: show the input and ouput relation between basic node.

Showing node and related information:
```
model = AutoModel.from_pretrained("bert-base-uncased")
tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
inputs = tokenizer("Hello world!", return_tensors="pt")
model_graph = draw_graph(model, input_data=inputs,
    save_graph = True,
    filename = 'output')

print (len(model_graph.edge_list))
for a, b in model_graph.edge_list:
    print (a, b, type(a), type(b))
```

### what torchview view can't so far

Attention: there are much softmax or activation functions in general model, the only three consecutive matrix multiplication is $(maxtrix_intput * W_q) * (maxtrix_intput * W_k)$, but it can not be optimized because there is no much difference between $d_input$ and $d_hidden$.

Parse module: torchview can not parse the specific module so far, there are so much special case in module, like [llamaAttention](https://github.com/huggingface/transformers/blob/b54109c7466f6e680156fbd30fa929e2e222d730/src/transformers/models/llama/modeling_llama.py#L273). But, if we have specific input data, it can follow a specific path to execute the code, it seems that torchview works in this way because input data or input size is necessary for torchview, I didn't research much more about that.


## Things worth explore


Optmization of matrix multiplication still can be used in other module, like 
1. LoRA, as said in unsloth
2. Autograd in backward, maybe


## Conclusion


Failling on this indicate that I always think too much but read insufficiently. Simple idea can not work in most situations.
