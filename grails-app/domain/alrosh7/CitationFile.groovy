package alrosh7

class CitationFile {

    String name
    String pathToFile

    static belongsTo = [phrase: Phrase]

    static constraints = {
        name nullable: false
        pathToFile nullable: false
    }
}
