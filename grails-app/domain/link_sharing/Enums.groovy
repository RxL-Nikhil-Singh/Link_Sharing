package link_sharing

class Enums {

    static enum Seriousness {
        CASUAL("C"),
        SERIOUS("S"),
        VERY_SERIOUS("V")

        String name
        Seriousness (String name) {
            this.name = name
        }
    }
    static enum Visibility {
        PUBLIC("Public"),
        PRIVATE("Private")

        String name
        Visibility (String name) {
            this.name = name
        }
    }

    static constraints = {
    }
}