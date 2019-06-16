msg=$1
gitbook build
rm -rf book
mv _book book
git add *
git commit -m "$msg"
git push
