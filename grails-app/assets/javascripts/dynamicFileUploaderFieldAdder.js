/**
 * Created by alex on 27/06/15.
 */

$( document ).ready(function() {
    $("#addCitationFile").click(function () {
        var originalField = $('.citationFileUploader').last().parent();
        var cloneInput = originalField.clone();
        //var cloneInputIdNewId = cloneInput.children('input').attr("id")+"_"+index++;
        //cloneInput.children('input').attr("id", cloneInputIdNewId);
        originalField.after(cloneInput);
    });
});