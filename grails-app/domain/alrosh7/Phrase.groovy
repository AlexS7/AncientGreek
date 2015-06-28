package alrosh7

class Phrase {

    String value // 1st field
    String origin //2nd field
    String description //3rd field
    String citation //4th field
    static hasMany = [descriptionFiles: DescriptionFile,
                      citationFiles: CitationFile]
    String germanTranslation //5th field
    String frenchTranslation //6th field

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
