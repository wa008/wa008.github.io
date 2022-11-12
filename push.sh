
comm=$1
echo "comm: ${comm}"

git pull

git add *
git commit -m "$comm"
git push origin main
