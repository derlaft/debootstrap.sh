#!/bin/bash

cp ./config.$OS.example $TARGET/etc/apt/sources.list
nano $TARGET/etc/apt/sources.list

cp ./fstab.example $TARGET/etc/fstab
nano $TARGET/etc/fstab

