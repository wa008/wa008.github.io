if [ $# != 1 ] ; then
	echo -e 'need comment!\n'
	exit 1
fi

comm=$1
echo 'comment: ${comm}\n'

git pull --rebase --autostash
if [ $? != 0 ] ; then
	echo 'git pull, error\n'
	exit 1
else
    echo 'git pull scuess, continue\n'
fi

git add *
git add ./.github/*
git status 

echo "check commit... Yes or No"
echo "Yes : 1"
echo 'No  : 0\n'
read flag
if [ $flag != 1 ] ; then
	echo 'No, exit\n'
	exit 1
else
    echo 'Yes, continue\n'
fi

git commit -m "$comm"
git tag -d main
git push origin main
