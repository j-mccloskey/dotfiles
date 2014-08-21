#!/bin/bash

declare -a arr=(".aliases" ".bash_profile" ".bash_prompt" ".commonrc" ".git-completion.bash" ".git-prompt.sh" ".gitconfig" ".maven-completion.bash" ".tmux.conf" ".vimrc")
dest_dir=~
cwd=$(pwd)

echo $cwd

pushd $dest_dir > /dev/null 2>&1

for i in "${arr[@]}"
do
  echo "linking $dest_dir/$i to $cwd/$i"
  ln -sf $cwd/$i $i
done

popd > /dev/null 2>&1
