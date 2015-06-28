package alrosh7

class CitationFileController {

    def scaffold = CitationFile
    
    def index() { }

    def download(){
        def citationFile = CitationFile.get(params.id);
        def file = new File(citationFile.pathToFile)

        response.setContentType("application/octet-stream")
        response.setHeader("Content-disposition", "attachment;filename=${file.getName()}")

        response.outputStream << file.newInputStream()
    }
}
