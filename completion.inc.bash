#!/bin/bash

if ! declare -F _emerge &>/dev/null; then
    declare -F __load_completion &>/dev/null &&
        __load_completion emerge
fi

declare -F _emerge &>/dev/null &&
    complete -o filenames -F _emerge %%COMMAND%%

