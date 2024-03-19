#!/bin/bash
rm -rf /root/blog/content/posts/*
rm -rf /root/blog/static/images/*
rm -rf /root/blog/public/*

echo -e "\e[31m /root/blog/content/posts/ \e[0m"
echo -e "\e[31m /root/blog/static/images \e[0m"
echo -e "\e[31m /root/blog/public/ \e[0m"
echo -e "\e[31mblog files have been purged!\e[0m"