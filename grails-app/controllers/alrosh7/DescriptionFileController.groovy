package alrosh7

class DescriptionFileController {

    def scaffold = DescriptionFile

    def index() { }

    def download(){
        def descriptionFile = DescriptionFile.get(params.id);
        def file = new File(descriptionFile.pathToFile)

        response.setContentType("application/octet-stream")
        response.setHeader("Content-disposition", "attachment;filename=${file.getName()}")

        response.outputStream << file.newInputStream()
    }
}
