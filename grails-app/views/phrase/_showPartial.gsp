<%@ page import="alrosh7.Phrase" %>

<div class="formWrapper">
    <div class="row valueFieldRow">
        <div class="col-md-12">
            <div class="valueField">
                <div ${hasErrors(bean: phraseInstance, field: 'value', 'error')} >
                    <div class="valueLabel">Καταχωρηση Λεξης/Ορου (1ο πεδιον)</div>
                    <g:textField name="value" maxlength="50" readonly="readonly" value="${phraseInstance?.value}"/>
                </div>
            </div>
        </div>
    </div>

    <div class="row originRow">
        <div class="col-md-12 originDataWrapper">
            <div ${hasErrors(bean: phraseInstance, field: 'origin', 'error')} >
                <div class="originLabel">Προελευση λεξης (2ο πεδιον)</div>
                <g:textArea name="origin" value="${phraseInstance?.origin}" class="originTextArea"/>
            </div>
        </div>
    </div>

    <div class="row citationDescriptionRow">
        <div class="col-md-6 citationDataWrapper">
            <div ${hasErrors(bean: phraseInstance, field: 'citation', 'error')} >
                <div class="citationLabel">Αναφορα Πηγης (4ο πεδιον)</div>
                <g:textArea name="citation" readonly="readonly" value="${phraseInstance?.citation}" class="citationTextArea"/>
            </div>
            <div ${hasErrors(bean: phraseInstance, field: 'citationFiles', 'error')} class="citationFilesUpload" ">
            <div class="citationFilesUploadLabel">Σχετικα Αρχεια</div>
        </div>
    </div>

    <div class="col-md-6 descriptionDataWrapper">
        <div ${hasErrors(bean: phraseInstance, field: 'description', 'error')} >
            <div class="descriptionLabel">Ερμηνεια Λεξης (3ον πεδιον)</div>
            <g:textArea name="description" readonly="readonly" value="${phraseInstance?.description}" class="descriptionTextArea"/>
        </div>
        <div ${hasErrors(bean: phraseInstance, field: 'descriptionFiles', 'error')} class="descriptionFilesUpload" >
            <div class="descriptionFilesUploadLabel">Σχετικα Αρχεια</div>
        </div>
    </div>
</div>
</div>
