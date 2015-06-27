package alrosh7

class Phrase {

    String value
    String origin
    String description
    String citation
    static hasMany = [descriptionFiles: DescriptionFile,
                      citationFiles: CitationFile]
    String germanTranslation
    String frenchTranslation

    static mapping = {
        origin type: "text"
        description type: "text"
        citation type: "text"
    }

    static constraints = {
        value blank: false, unique: true, size: 1..50
        origin nullable: true
        description nullable: true
        citation nullable: true
        frenchTranslation nullable: true
        germanTranslation nullable: true
    }
}
