time=`date '+%Y%m%d-%H%M%S'`

url="https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty"
story=`curl ${url} | awk -F ",| " '{print $2}'`

exist=0
index=0
for file in ./data/*
do
    if [[ ${index} -ge 3 ]]
    then 
        break 
    fi 
    history_story=`echo ${file} | awk -F '-' '{print $3}'`
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
    curl https://hacker-news.firebaseio.com/v0/item/${story}.json?print=pretty > ./data/${story_file_name}
    echo "${story} write done"
else 
    echo "${story} already exist"
fi