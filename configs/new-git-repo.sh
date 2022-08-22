#!/bin/bash
sudo curl -u "pachares" https://api.github.com/user/repos -d '{"name":"new-workspace"}'
cd ~/new-workspace && sudo git init && echo "# new-workspace" >> README.md && sudo git add . && sudo git commit -m "first commit" && sudo git remote add origin https://github.com/pachares/new-workspace.git
sudo git config --global --add safe.directory '~/new-workspace' && sudo git push --set-upstream origin master
