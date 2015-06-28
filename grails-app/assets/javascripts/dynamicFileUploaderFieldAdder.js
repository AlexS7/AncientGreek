/**
 * Created by alex on 27/06/15.
 */

$( document ).ready(function() {
    $("#addCitationFile").click(function () {
        var originalField = $('.citationFileUploader').last();
        var newFileInput = $('<input/>').
            attr('type', 'file').
            attr('id', 'citationFileUploader').
            addClass("citationFileUploader").
            attr("name","citationFilesUploader");
        originalField.after(newFileInput);
    });
});