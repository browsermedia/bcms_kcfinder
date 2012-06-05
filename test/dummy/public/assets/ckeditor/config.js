// The following is copied from BrowserCMS core

CKEDITOR.config.toolbar_CMS = [
  ['Source','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','SpellChecker','Scayt','-','Undo','Redo','Find','Replace','RemoveFormat','-','NumberedList','BulletedList','Outdent','Indent','HorizontalRule'],
  '/',
  ['Link','Unlink','Anchor','Image','Table','SpecialChar','-','Bold','Italic','Underline','JustifyLeft','JustifyCenter','JustifyRight','JustifyFull','-','TextColor','Styles']
];

CKEDITOR.config.toolbar_CMSForms = [
	['Source','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','SpellChecker','Scayt','-','Undo','Redo','Find','Replace','RemoveFormat','-','NumberedList','BulletedList','Outdent','Indent','HorizontalRule'],
  '/',
	['Link','Unlink','Anchor','Image','Table','SpecialChar','Bold','Italic','Underline','JustifyLeft','JustifyCenter','JustifyRight','JustifyFull','TextColor','Styles'],
	'/',
	['TextField','Select','Checkbox','Radio','Textarea','Button','ImageButton','HiddenField']
];

CKEDITOR.config.width = 598;
CKEDITOR.config.height = 400;

CKEDITOR.config.toolbar = 'CMS';

// Add KCFinder
CKEDITOR.editorConfig = function(config) {
   config.filebrowserBrowseUrl = '/bcms_kcfinder/browse';
   config.filebrowserImageBrowseUrl = '/bcms_kcfinder/browse?type=images';
   config.filebrowserFlashBrowseUrl = '/assets/kcfinder/browse.php?type=flash';
   config.filebrowserUploadUrl = '/assets/kcfinder/upload.php?type=files';
   config.filebrowserImageUploadUrl = '/assets/kcfinder/upload.php?type=images';
   config.filebrowserFlashUploadUrl = '/assets/kcfinder/upload.php?type=flash';
};