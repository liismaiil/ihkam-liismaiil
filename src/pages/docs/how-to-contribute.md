---
title: How to contribute
pageTitle: How to contribute to our project
description: Contribute to progress .
---

## Some tools you need to get involved 
### - Tools , code editor, 
* 🔽 You can use vscode to edit your local repository 
[Download vscode](https://code.visualstudio.com/Download )

* 🔽 You can use ImageMagick® which is a free, open-source software suite to transform your pdf file to png chrinked png files
[Download image magick](https://imagemagick.org/ )


* 🔽 You have get git program in order to manage your local code and then push changes to github global project.
[Download git](https://git-scm.com/downloads )

* 🔽 For those who have windows system you can download hyper terminal, i never used it before just an advice,
[Download hyper](https://hyper.is/)

### - Usefull commands
*  to manage slides, to transform pdf files to png ones  
 
```bash
 magick الدرس\ \(14\)\ المخصصات\ المنفصلة.pdf    osoul-14.png
```
* you can either reduce the image png heavy to resize it

```bash
    magick hadith-22-sc-f.png.webp -resize 50%   hadith-22-sc-ff.png.webp 
```

* then you can use all the png files in the tutorial movr them to '/public/image/[rep]/*' 

```bash
   mv *.png.webp[]/public/images/[rep]/
```
* 🔽 usefull library in order to optimize and to downsize png images, we improve theme with webp encoder  [Download libwebp](https://developers.google.com/speed/webp/docs/precompiled?hl=fr)

```bash
find $src_dir  -maxdepth 3 -mindepth 1 -type f -iname "*.png" -exec  cwebp {} -o {}.webp \; 
```