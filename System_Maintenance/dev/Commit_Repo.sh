cd ${WORKSPACE}
pwd
ls -ltr
git config --list
git add .
git commit -m "`date` commit"
git branch -M main
git push -u origin main
