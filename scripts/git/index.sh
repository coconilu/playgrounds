# 删除本地被Merge过的分支
git branch --merged master | grep -v "^\* master" | xargs -n 1 -r git branch -d