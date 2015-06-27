package alrosh7

class DescriptionFile {

    String name
    String pathToFile

    static belongsTo = [phrase: Phrase]

    static constraints = {
        name nullable: false
        pathToFile nullable: false
    }
}
