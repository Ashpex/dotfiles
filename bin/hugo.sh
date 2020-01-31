#!/usr/bin/env bash
hugoDir=/home/ashpex/hugo/
webDir=/home/ashpex/hugo/ashpex.github.io/
cd $hugoDir
hugo
echo "================================="
echo "Commiting to web directory..."
cd $webDir
git add -A
echo -e "Enter comment: "
read comment1
git commit -m "$comment1"
git push
echo "Commited successfully."
echo "================================="
echo "Commiting to hugo directory..."
cd $hugoDir
git add -A
echo -e "Write your comment: "
read comment2
git commit -m "$comment2"
git push
