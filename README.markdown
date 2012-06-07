# KCFinder Module

This project is a BrowserCMS which integrates the KCFinder module with BrowserCMS. KCFinder enhances CKEditor to allow users to browse the server to find files, images and links to pages. KCFinder is an open source alternative to the commercial CKFinder module.

This module replaces the existing KCFinder PHP code for handling uploads and uses Rails to handle all server side code. This is not a general purpose Rails module, as the upload structure is designed to store files using BrowserCMS's Content API.


## Features

* Users can browse for links which will show Pages, Files and Images in a single Sitemap tree.
* Users can select a section and see all assets
* Can browse sections in sitemap
* Users can select a page or file and link to it.
* Users can browse for images and add them.
* Icons work for most common types.
* Can upload and link to files
* Can upload and link to images

## Installation

```
$ rails g cms:install bcms_kcfinder
```

When you start your server, you should see 'Browse Server' links when linking or placing images.

## Third Party Software

This project integrates the KCFinder project (http://kcfinder.sunhater.com/) which is released under the GPL/LGPL license. See vendor/assets/javascript/kcfinder/doc/README for more details.

For the purposes of integration, all PHP code has been removed leaving only client code, specifically the following directories:

* doc
* js
* themes

## TODO

Things remaining to be implemented:

* Add security to browse (only content editors, require permissions to upload to that section)
* File Details:
** Implement mtime
** Implement date
* Unknown extensions return 404s (i.e. CSV, etc)


