---
date: 2024-03-18T10:58:08-04:00
description: "How to deploy HUGO"
featured_image: "/images/image-01-1-boss-store-soho-new-york.jpg"
tags: ["Guides"]
categories: "HUGO"
title: "HUGO Guides"
---

# Ⅰ - Environment

Download hugo release package - hugo_0.68.3_Linux-64bit.deb 

<https://github.com/gohugoio/hugo/releases/tag/v0.68.3>



Install hugo version v0.68.3

`sudo dpkg --install ./hugo_0.68.3_Linux-64bit.deb`



Create new blog folder

`hugo new site blog`



==Enter the blog/ folder==

`cd blog/`



![hugo_preview](/images/hugo_preview.jpg)

Download the [diary]<https://themes.gohugo.io/themes/hugo-theme-diary/> theme

`git init`

`git submodule add https://github.com/AmazingRise/hugo-theme-diary.git themes/diary`



Copy the themes/diary/exampleSite/ folder to blog/

`cp -r themes/diary/exampleSite/. .`



To preview the site locally

`hugo server -D`



# Ⅱ - Create Posts in markdown

Create new .md file in blog/content/posts folder

`hugo new posts/test.md`



Edit the configuration text inside .md file
NOTE THE DATE DO NOT EXCEED THE TIME ON WEB SERVER!
```
---
date: 2017-04-09T10:58:08-04:00
description: "The Grand Hall"
featured_image: "/images/Pope-Edouard-de-Beaumont-1844.jpg"
tags: ["scene"]
categories: "Story"
title: "Chapter I: The Grand Hall"
---
```




If the .md file contains pictures, make sure the image tag in the format below:

==`![img_name](/images/img_name.png)`==



# Ⅲ - Generate Static HTML

Before generate static HTML files, all .md files should be put in blog/content/posts

And all images included in .md files should be in blog/static/images



Generate static HTML files when the above steps are ready:

`hugo`



Finally, copy all HTML files generated in blog/public/ to /var/www/html

cp -r public/. /var/www/html/



# Ⅳ - Automation

If we create a repository on github, i.e. `articles\`  for the .md files, `images` for the image files.



First, clone the repository

 `git clone https://github.com/shydl3/strix.git /root/strix`



Keep the local repo updated

`cd /root/strix`

`git pull`



Copy .md articles to blog/content/posts

`cp -rT /root/strix/articles /root/blog/content/posts`

Copy images to blog/static/images

`cp -rT /root/strix/images /root/blog/static/images`



Generate static HTML website with hugo

`cd /root/blog`

`hugo`



Then copy HTML resources to webroot

`cp -r /root/blog/public/. /var/www/html/`



Display success message in green

`echo -e "\e[32mSuccessfully updated the blog!\e[0m"`



Now we put the commands above in a .sh script, and update the .md file and pictures on github, let it automatically update the blog for us.
