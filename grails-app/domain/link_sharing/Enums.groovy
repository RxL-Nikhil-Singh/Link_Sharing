package link_sharing

class Enums {

    static enum Seriousness {
        CASUAL("CASUAL"),
        SERIOUS("SERIOUS"),
        VERY_SERIOUS("VERY_SERIOUS")

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