#!/bin/bash

CURRENT_DISPLAY=$(yabai -m query --displays --display | jq '.index')

SPACE_NUM=$1

SWITCH_TO=$((5 * ($CURRENT_DISPLAY - 1) + $SPACE_NUM))

yabai -m space --focus $SWITCH_TO