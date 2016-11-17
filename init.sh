#!/usr/bin/env bash

# Remove space.
IFS="$(printf '\n\t')"

echo "Where is repository to update: "
read BASE_DIR

# if [ $BASE_DIR == "" ]; then
#   BASE_DIR=/Users/dli/Sites/repos
# fi

BASE_DIR=/Users/dli/Sites/git

echo "Working directory: $BASE_DIR"

check_repository_existance() {
  if [ ! -d "$BASE_DIR" ]; then
    echo "Could not find a .git repository at $BASE_DIR .."
    exit 1
  fi
}

remove_sample_hooks() {
  for file in $BASE_DIR/**/.git/hooks/* ; do
    if [ -e "$file" ] ; then

      if [[ "$file" =~ ^.+(sample)$ ]]; then
        # echo "Removing sample hook file $file .."
        # rm -f $file
        echo "Would remove sample hook file $file .."
      fi
    fi
  done
}

init_repository() {
  for dir in $BASE_DIR/* ; do
    echo "I in directory: $dir"
    cd $dir && git init
  done
}



# Q: how to make ~/ and $HOME work from cli-input ?
# T: make script accept cli args for 'init' or 'remove'

check_repository_existance
remove_sample_hooks
init_repository
