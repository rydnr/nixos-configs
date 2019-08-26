#!/bin/bash

target="$(hostname)";

for d in $(find . -type d | grep -v '.git'); do
  pushd ${d}
  for f in $(find . -maxdepth 1 -name "*.${target}"); do ln -sf $f $(basename $f .${target}); done
  popd;
done
