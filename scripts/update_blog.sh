#!/bin/bash

# Clone the 'strix' repository
git clone https://github.com/shydl3/strix.git /root/strix
cd /root/strix
git pull

# Copy articles to blog content directory
cp -rT /root/strix/articles /root/blog/content/posts

# Copy images to blog static directory
cp -rT /root/strix/images /root/blog/static/images

# Change directory to blog
cd /root/blog

# Generate static website with Hugo
hugo

# Copy generated content to web server directory
cp -r /root/blog/public/. /var/www/html/

echo -e "\e[32mSuccessfully updated the blog!\e[0m"
