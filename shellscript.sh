#!/bin/bash

function create() {

  cd
  cd PycharmProjects/project_automation/
  source venv/bin/activate
  python3 main.py $1 #runs python script and passes it the argument after create was called
  cd
  cd PycharmProjects/
  mkdir "$1"
  cd $1
  git init
  touch README.md
  touch .gitignore
  git add -A
  git commit -m "Initial commit"
  git remote add origin https://github.com/Kibstar/$1.git
  git push -u origin master
  echo Successfully created project
}