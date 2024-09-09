---
layout: default
title: Weekly-#2 The fail of first product
---

# Product process

### Voice correction

From monday to wednesday, I finish the frist verison of my first product, which is [voice correction](https://github.com/wa008/voiceCorrection). It always have several drawbacks duc to the lack of high performance of my computer. This price of cloud computer is high, that is the main reason I don't continue this project temporary. The first version is available for me or my girlfriend, but it is too shy to share to public. There are several problems.

1. some voice will not converted to text sometimes, because of the lack of high performance of computer. better computer can illeviate this issue.
2. The order of text is not totally the same with voice, because I didnot reroder it after convert voice to text with multi threads, I have own the related techniques. I will do that if I restart this project in the future.
3. the performance of voice-to-text and text correction models is not always good, bigger model and better machine can diminish this issue.

I still learn a lot from this project, for examle

1. The definition of async function and how to use that in python, it is essentail in stream or speaking scene.
2. The price of machine and the need of LLM for machine
3. How to use discord bot, which is powerful
4. The potential of web-gpu, which make lots of LLM product possible

### Other product attempts

**Collection of web-tools**

The collection of web-tools, the define of web-tools is that this kind of product don't rely serivce. This kind of product have low cost and are easy to copy, there are less powerdown or other related issues for that.

After explore for several hours, I found there is a open source product named (it-tools](https://it-tools.tech/) which is great. I don't need to do that again.

I move my sight to web-tools of AI product, it is also not an ideal prodcut becuase most of LLM product are not abvailable in only-web.

1. Text-base: there is a related porduct named [mlc-llm](https://github.com/mlc-ai/web-llm), this is fine.
2. image-base: more of image model are 12B, it is too big to run in-browser
3. video-base: it's more impossible compare to image-base
4. audio-base: 
   1. voice-to-text: [whisper.wasm](https://whisper.ggerganov.com/) is great
   2. text-to-voide: there is not related proudct temporary, I can do that.

**Text-to-voice in-browser**

Influenced by My collection of web-tools idea, I want to make a text-to-voice product just like whisper.wasm, there are several advantages.

+ service is not necessary, I can host it on github pages, it can be free for public.
+ it run only in-browser, there are not privacy concerns.
+ it is useful for public, for example, I need that when I prepare my ielts test

**Direct translation extension**

Inspired by the pop up windows of a english learning platform, I want to make a translation extension, it can show the translation after user double-click the content that he/she select. Compared to other related products, it can show translation directly with only one operation, other proudcts need two operation to trigger translation.

Now, I finished the front-end code, I need to add requesting translation API funciton to my project.

I forgot to push code to github again, I don't know it is essential in the initial step of a product.

# Personal life

### ITLTS

The review of ielts speaking have a result, I got the score that I need. This is a great thing because I can put more attention on my personal projects.

### Reading

I didn't read as much as last week, because my products gone not very well.

+ [The CEO of telegram was arrested by frence government](https://news.ycombinator.com/item?id=41352027). 
  + Telegram is always a wired proudct, it is famous by security but it don't open e2e as default, there are so powerful other function in this platform which are not related with security like bot, channel.
+ [The small tools in whatsapp](https://www.indiehackers.com/post/make-over-30k-mo-using-whatsapp-fj39ttTpmPCBemFo6D6g): There are several so simple product but can bring so much profits. The profits are not alwasy related with its complexity
+ [remove background in using web-gpu](https://news.ycombinator.com/item?id=41358490): I think this kinds product are powerful, It will be great if we can make web-gpu support more LLM, like models in huggingface.

### exercise

I start to do small exercise this week, I did at least finve times in this week, this is a good start.

# Next week

plan for next week

+ product
  + realize the direct translation extension
  + publish it to public
  + generate more ideas
+ reading more 
+ exercise
+ take part in social group
