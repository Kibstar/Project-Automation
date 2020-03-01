import sys, os
from github import Github

project_name = sys.argv[1]
print(project_name)

username = os.environ.get('GITHUB_USER')
password = os.environ.get('GITHUB_PASS')

g = Github(username,password).get_user()

def create():
    new_repo = g.create_repo(project_name)
    print('Successfully created a GitHub repo')

if __name__ == "__main__":
    create()