package alrosh7



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PhraseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Phrase.list(params), model:[phraseInstanceCount: Phrase.count()]
    }

    def show(Phrase phraseInstance) {
        respond phraseInstance
    }

    def create() {
        respond new Phrase(params)
    }

    @Transactional
    def save(Phrase phraseInstance) {
        def foo = params;
        println foo.dump();
        def bar = request;
        println bar.dump();
        def foobar = request.getMultiFileMap()
        println foobar.dump()
        foobar["citationFilesUploader"].each {
            if(it.fileItem.fileName == "" || it.fileItem.size == 0 ) { return }
            def barr = it
            def barw = it.fileItem
            it.transferTo(new File("/home/alex/Projects/Grails/ancientgreek/${it.fileItem.fileName}"))
            def citationFile = new CitationFile(pathToFile: "/home/alex/Projects/Grails/ancientgreek/${it.fileItem.fileName}")
            phraseInstance.addToCitationFiles(citationFile)
        }
        foobar["descriptionFilesUploader"].each {
            if(it.fileItem.fileName == "" || it.fileItem.size == 0 ) { return }
            it.transferTo(new File("/home/alex/Projects/Grails/ancientgreek/${it.fileItem.fileName}"))
            def descriptionFile = new DescriptionFile(pathToFile: "/home/alex/Projects/Grails/ancientgreek/${it.fileItem.fileName}")
            phraseInstance.addToDescriptionFiles(descriptionFile)
        }

        //def f = request.getFile('citationFilesUploadr')
        //f.transferTo(new File("/home/alex/Projects/Grails/ancientgreek/foo.jpg"))

//        request.fileNames.each {
//            File file = request.getFile(it)
//        }

        if (phraseInstance == null) {
            notFound()
            return
        }

        if (phraseInstance.hasErrors()) {
            respond phraseInstance.errors, view:'create'
            return
        }

        phraseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'phrase.label', default: 'Phrase'), phraseInstance.id])
                redirect phraseInstance
            }
            '*' { respond phraseInstance, [status: CREATED] }
        }
    }

    def edit(Phrase phraseInstance) {
        respond phraseInstance
    }

    @Transactional
    def update(Phrase phraseInstance) {
        if (phraseInstance == null) {
            notFound()
            return
        }

        if (phraseInstance.hasErrors()) {
            respond phraseInstance.errors, view:'edit'
            return
        }

        phraseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Phrase.label', default: 'Phrase'), phraseInstance.id])
                redirect phraseInstance
            }
            '*'{ respond phraseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Phrase phraseInstance) {

        if (phraseInstance == null) {
            notFound()
            return
        }

        phraseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Phrase.label', default: 'Phrase'), phraseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'phrase.label', default: 'Phrase'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
