package alrosh7

class Word {

    String value

    static constraints = {
        value blank: false, unique: true
    }
}
