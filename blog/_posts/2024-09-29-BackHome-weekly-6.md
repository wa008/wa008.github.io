---
layout: default
title: Weekly-#6 Cost of PopTranslate
---

# Product process

### PopTranslate

This is a multi stages story.

1) Lost my free $300 in Google Account

In order to join the YouTube Premium family account, I need to change my location from Canada to America. So, I delete my previous payment profile, which is used for Google Translation API but I didn't realize that at that time. I create a new payment where I set the address in America and linked this payment with Google Translation API in order to continue use it.

After two days, I realized I lost the free $300 for new account from Google and must pay billing by myself, it cost about $25 everyday and last two days, of course it's too expensive. This is also the first time I realized it's so expensive for Translation server.

I link my card with another Google account and use the free $300 to creat a new api_key and use it in PopTranslte new version, I published new version immediately.

This is almost the end of stage 1 and must pay about $50 in the end of the month.

2) Tranfer Translation from Google API to self hosted service.

After I pubslished PopTranslate two week, the data is already stable, it shows as below:

> active users: 18
> change: $27.12
> requests: 11k
> average requests: 611
> average characters per requests: 61
> average QPS: 0.12
> Google translation API price: $20/500k characters

of course it's too expensive even I make the extension paid for user. so, I must tranfer it to self hosted service. 

[LibreTranslate](https://github.com/LibreTranslate/LibreTranslate) is the best option I have found, I'm trying to hosted this on Google VM, but it always not a ideal option because VM cost $30 per month, I can use it at least 3 months because $300 from Google is valid in 90 days. I will find a better solution after that.

self-hosted is complex, I'm still trying.

### YouTube

Recording and Upload two videos in this week, leetcode problem has more views than atcoder resulting from keywords search.

### Daily
+ 9.23: Analysis security project and submit more resume
+ 9.24: Record one video and investigate countries
+ 9.25: Deal with Google billing problems and submit more applications
+ 9.26: Back home
+ 9.27: finish google form API for security project and rest
+ 9.28: Try LibreTranslate
+ 9.29: rest

# Personal life

### Reading

None

### Exercise

two times

### Thought

1) Translation service is so expensive, maybe I can host one.

2) Plan B is more complex, maybe I should change the plan.

# This week

- [ ] Plan B
    - [x] Remote jobs opportunities
    - [x] Possibility to other countries
- [x] Youtube videos
- [x] Projects
    - [x] related with security clearance
    - [x] PopTranslate
- [ ] Reading and Wrting
- [ ] Exercise

# Next week

+ Injunction stage two
+ Monitor of PopTranslate
+ Rest
