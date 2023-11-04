#!/usr/bin/env bash

# @changesets/action tag publish + GitHub release is only triggered if a tag starting with "v" is created
# This script simulates changeset publish command, since it creates that tag.

tag=v$(cat package.json | grep version | cut -d '"' -f 4)

git tag $tag | echo "New tag: $tag"
