#!/usr/bin/env bash

# for me generated example passes but modified example fails

testdir="$(date +%s)-test"
function check() {
    if !(cabal build && site rebuild && site check); then 
        popd; echo; echo failed on $1; exit 1
    else
        echo; echo success on $1
    fi
}

hakyll-init "$testdir"
pushd "$testdir"
check "generated example"
mv about.rst about.md
mv contact.markdown contact.md
perl -pi -e 's/\.(markdown|rst)/.md/g' site.hs
check "modified example"
popd
