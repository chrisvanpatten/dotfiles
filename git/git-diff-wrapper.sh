#!/bin/sh

# vimdiff
vimdiff -fv "$2" "$5"

# filemerge/opendiff
#/usr/bin/opendiff "$2" "$5" -merge "$1"
