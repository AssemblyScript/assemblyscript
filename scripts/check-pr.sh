# Distribution files should not be modified
STATUS=0
if git --no-pager diff --name-only FETCH_HEAD $(git merge-base FETCH_HEAD $TRAVIS_BRANCH) | grep -q "^dist/"; then
  STATUS=1 &&
  printf "\n" &&
  printf "The pull request includes changes to distribution files, but it shouldn't.\n" &&
  printf "Please see https://github.com/AssemblyScript/assemblyscript/blob/master/CONTRIBUTING.md\n";
else
  printf "\n" &&
  printf "GOOD: The pull request does not include changes to distribution files.\n";
fi

# Authors should have added themself to the NOTICE file
AUTHOR=$(git log -1 --format="%aE")
if [ -z "$AUTHOR" ]; then
  printf "\n" &&
  printf "Skipping NOTICE check: Commit does not include an email address.\n";
else
  if grep -q "$AUTHOR" NOTICE; then
    printf "\n" &&
    printf "GOOD: Author is present in the NOTICE file.\n";
  else
    printf "\n" &&
    printf "Author does not appear to be listed in the NOTICE file, yet.\n" &&
    printf "Please see https://github.com/AssemblyScript/assemblyscript/blob/master/CONTRIBUTING.md\n";
  fi
fi

exit $STATUS
