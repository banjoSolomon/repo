#!/bin/bash

echo "Hello Lets begin creating a new project"
read -p "Enter the name of the repo: "  repository

mkdir $repository
cd $repository
mkdir .github
cd .github
mkdir workflows
touch workflows.yml
cd ..
cd ..
gh repo create $repository --public
echo $repository >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/banjoSolomon/$repository.git
git push -u origin main
git branch in-dev
git push origin in-dev
