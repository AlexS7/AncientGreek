package alrosh7

class CitationFile {

    String name
    String pathToFile

    static constraints = {
        name blank: false
        pathToFile blank: false
    }
}
