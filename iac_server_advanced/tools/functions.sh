#!/bin/bash

function check_answer() {
    local ans="$1"
    if [ "$ans" != "y" ] && [ "$ans" != "n" ]; then
        printf "\nDigite um comando válido.\n"
    else
        question_number+=1
    fi
}
