package alrosh7

class Phrase {

    String value

    static constraints = {
        value blank: false, unique: true, size: 1..50
    }
}
