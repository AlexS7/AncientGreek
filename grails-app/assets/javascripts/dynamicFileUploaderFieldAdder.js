/**
 * Created by alex on 27/06/15.
 */

$( document ).ready(function() {
    $(".addCitationFile").click(function () {
        var originalField = $('.citationFilesUploaderWrapper').last();
        var newFileInput = $('<input/>').
            attr('type', 'file').
            attr('id', 'citationFileUploader').
            addClass("citationFileUploader").
            attr("name","citationFilesUploader");
        originalField.after(newFileInput);
        $('.citationFilesUploaderWrapper').last().next().wrap("<div class='citationFilesUploaderWrapper'></div>");
    });

    $(".addDescFile").click(function () {
        var originalField = $('.descriptionFilesUploadWrapper').last();
        var newFileInput = $('<input/>').
            attr('type', 'file').
            attr('id', 'citationFileUploader').
            addClass("citationFileUploader").
            attr("name","citationFilesUploader");
        originalField.after(newFileInput);
        $('.descriptionFilesUploadWrapper').last().next().wrap("<div class='descriptionFilesUploadWrapper'></div>");
    });
});