msg=$1
rm -rf book
gitbook build
mv _book book
rm -rf book/.gitbook
git add *
git commit -m "$msg"
git push
