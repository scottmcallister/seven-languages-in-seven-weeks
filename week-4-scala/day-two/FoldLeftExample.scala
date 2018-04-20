object FoldLeftExample {
    def main(args: Array[String]) {
        // compute the total size of a list of strings
        val listOfStrings = List("Oh", "Say", "Can", "You", "See")
        val totalSize = (0 /: listOfStrings) { (sum, i) => sum + i.size }
        println(totalSize)
    }
}