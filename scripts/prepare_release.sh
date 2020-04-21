#!/bin/bash
set -e # abort CI if an error happens

echo -n "Select change type and press [ENTER]: 
"

PS3="Select a change type: "
workingDirectory=./packages/remote_state

select version in minor major
do
    if [ -z "${version}" ]; then
    echo "Missing or incorrect change type"
    exit 1
    fi
    cd $workingDirectory
    version=$(pubver bump $version)
    cd -
    git-chglog --next-tag $version -o $workingDirectory/CHANGELOG.md
    exit
done