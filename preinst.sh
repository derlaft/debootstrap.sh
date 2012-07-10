#!/bin/bash

ARCH=i386
#ARCH=amd64 ##установить 64-битную систему из-под 32-битной не выйдет

## пример для debian
OS=debian
DISTRO=wheezy
#DISTRO=stable

## ubuntu
#OS=ubuntu
#DISTRO=oneiric

## место для установки системы
TARGET=/mnt/ubuntu

## в качестве источника можно использовать примонтированный cdrom с системой:
#debootstrap --include=sudo,nano,wget --arch $ARCH $DISTRO $TARGET file:/media/cdrom

## а можно и зеркало в интернете
debootstrap --include=sudo,nano,wget --arch $ARCH $DISTRO $TARGET http://debian.mirror.vu.lt/$OS/

## строчки ниже трогать не нужно, они монтируют системные директории в новый /
mount -o bind /dev $TARGET/dev
mount -o bind /sys $TARGET/sys


