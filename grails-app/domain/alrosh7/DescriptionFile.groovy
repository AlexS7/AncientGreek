package alrosh7

class DescriptionFile {

    String name
    String pathToFile

    static constraints = {
        name blank: false
        pathToFile blank: false
    }
}
