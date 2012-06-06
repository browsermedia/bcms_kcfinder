# KCFinder Module

This project is a BrowserCMS which integrates the KCFinder module with BrowserCMS. KCFinder enhances CKEditor to allow users to browse the server to find files, images and links to pages. KCFinder is an open source alternative to the commercial CKFinder module.

This module replaces the existing KCFinder PHP code for handling uploads and uses Rails to handle all server side code. This is not a general purpose Rails module, as the upload structure is designed to store files using BrowserCMS's Content API.

## Installation

```
$ rails g cms:install bcms_kcfinder
```

When you start your server, you should see 'Browse Server' links when linking or placing images.

## Third Party Software

This project integrates the KCFinder project (http://kcfinder.sunhater.com/) which is released under the GPL/LGPL license. See vendor/assets/javascript/kcfinder/doc/README for more details.
