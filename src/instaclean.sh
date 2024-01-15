#!/bin/bash

df -h | grep Users | awk '{print "before:\t" $2 " = " $3 " + "  $4}'
rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
rm -rf ~/Library/Application\ Support/Slack/Cache/
rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
rm -rf ~/Library/Caches/*
rm -rf ~/.Trash/*
rm -rf ~/Library/Safari/*
rm -rf ~/.kube/cache/*
rm -rf ~/gradle/caches/*
rm -rf ~/Library/Application\ Support/Code/CachedData/*
rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage/*
rm -rf ~/Library/Application\ Support/Code/Service\ Worker/*
rm -rf ~/Library/Containers/com.docker.docker/Data/vms/*
rm -rf ~/Library/Containers/com.apple.Safari/Data/Library/Caches/*
rm -rf ~/Library/Caches/Google/Chrome/*
df -h | grep Users | awk '{print " after:\t" $2 " = " $3 " + "  $4}'y