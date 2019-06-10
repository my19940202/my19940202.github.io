msg=$1
gitbook build
git add *
git commit -m "$msg"
git push
