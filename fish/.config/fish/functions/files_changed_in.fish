function files_changed_in
  git diff-tree --no-commit-id --name-only -r $argv
end
