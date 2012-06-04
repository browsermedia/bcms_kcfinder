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