# /usr/bin/bash

time=`date '+%Y%m%d-%H%M%S'`

url="https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty"
story=`curl ${url} | awk -F ",| " '{print $2}'`
ls

exist=0
index=0
for file in `ls -r ./topHackNews/_posts/`
do
    if [[ ${index} -ge 10 ]]
    then 
        break 
    fi 
    history_story=`echo ${file} | awk -F '-' '{print $3}'`
    echo "history_story: ${history_story}"
    echo "story: ${story}"
    if [[ "${history_story}" == "${story}" ]]
    then
        exist=1
        break 
    fi
    let index++
done

if [[ ${exist} -eq 0 ]]
then 
    story_file_name=${time}-${story}
    echo ${story_file_name}
    curl https://hacker-news.firebaseio.com/v0/item/${story}.json?print=pretty > ./topHackNews/_posts/${story_file_name}
    echo "${story} write done"
else 
    echo "${story} already exist"
    date > ./topHackNews/_posts/timestamp
fi