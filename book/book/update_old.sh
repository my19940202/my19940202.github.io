msg=$1
#cd /Users/baidu/GitBook/Library/my19940202/xsb_dev_manual/ && gitbook build
gitbook build
cd -
cp -r /Users/baidu/GitBook/Library/my19940202/xsb_dev_manual/_book/* .
git add *
git commit -m "$msg"
git push
