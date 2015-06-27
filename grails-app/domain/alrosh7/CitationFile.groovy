package alrosh7

class CitationFile {

    String name
    String pathToFile

    static belongsTo = [phrase: Phrase]

    static constraints = {
        name nullable: true
        pathToFile nullable: false
    }
}
