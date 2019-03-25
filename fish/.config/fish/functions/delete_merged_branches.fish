function delete_merged_branches
  git branch --merged | grep -v "^\*" | xargs git branch -d
end
