// Determine the URL or Path to a given file
// @param [String | Object] file A string or JSON object representing a file
browser.fileUrl = function(file){
    console.log("Path is:" + file.data('path'));
    var fileURL = "";
    if(file.substr){
        fileURL = file
    } else if(file.data('path') != undefined){
        fileURL = file.data('path');
    }else{
        fileURL = browser.uploadURL + '/' + browser.dir + '/' + file.data('name');
    }
    fileURL = _.escapeDirs(fileURL);
    return fileURL;

}

browser.smallIconFor = function(icon){
    return browser.iconFor('small', icon);
}

browser.bigIconFor = function(icon){
    return browser.iconFor('big', icon);
}
browser.iconFor = function(size, icon){
    // For missing extensions (i.e. CMS Pages), use the .html icon
    if(icon == "."){
        icon = "html";
    }
    return '/assets/kcfinder/themes/' + browser.theme + '/img/files/'+ size +'/' + icon + '.png';

}
