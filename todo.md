# Base Configuration to Tie KCFinder into CKEditor
CKEDITOR.editorConfig = function( config )
{
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';
    config.toolbar_project_name =
    [
        { name: 'basicstyles',  items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
        { name: 'paragraph',    items : [ 'NumberedList','BulletedList','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
        { name: 'links',        items : [ 'Link','Unlink' ] },
        { name: 'insert',       items : [ 'Image','Table','SpecialChar' ] },
        '/',
        { name: 'styles',       items : [ 'Templates','Format' ] },
        { name: 'tools',        items : [ 'Paste','PasteText','PasteFromWord','-','Maximize', 'ShowBlocks','Source' ] }
    ];

    /* KC Finder */
    config.filebrowserBrowseUrl = '/javascripts/admin/kcfinder/browse.php?type=all';
    config.filebrowserImageBrowseUrl = '/javascripts/admin/kcfinder/browse.php?type=all';
    config.filebrowserFlashBrowseUrl = '/javascripts/admin/kcfinder/browse.php?type=flash';
    config.filebrowserUploadUrl = '/javascripts/admin/kcfinder/upload.php?type=all';
    config.filebrowserImageUploadUrl = '/javascripts/admin/kcfinder/upload.php?type=all';
    config.filebrowserFlashUploadUrl = '/javascripts/admin/kcfinder/upload.php?type=flash';

    config.toolbar = 'client_name';
    config.docType = '';
    config.startupOutlineBlocks = true;
    config.contentsCss = '/stylesheets/templates/client_name/wysiwyg.css';
    config.styleSet = '';
    config.template_files = '';
    config.tabSpaces = 5;
    config.fillEmptyBlocks = false;
    config.height = 350;
    config.autoGrow_minHeight = 350;
    config.templates_replaceContent = false;
    config.pasteFromWordPromptCleanup = true;
    config.pasteFromWordRemoveFontStyles = true;
};

## Asset Pipeline load order:

* Key file is /assets/ckeditor/config.js which is used to configure and load the ckeditor
* bcms_kcfinder/assets/ckeditor/config.js is not first used (it loads from cms gem)
* test/dummy/public/assets/ckeditor/config.js is FIRST.

Use the later for now, until I figure out a better way to dynamically add it.