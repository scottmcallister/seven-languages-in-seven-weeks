import scala.io.Source
import scala.collection.mutable.HashMap

trait Censor {
    def getBadWords(): HashMap[String, String] = {
        val filename = "badwords.txt"
        var badWords: HashMap[String, String] = HashMap()
        for (line <- Source.fromFile(filename).getLines) {
            val words = line.split(", ")
            badWords += (words(0) -> words(1))
        }
        badWords
    }

    def replaceBadWords(str: String, badWords: HashMap[String, String]) =
        str.split(" ").map(word => checkBadWord(word, badWords)).mkString(" ")

    def checkBadWord(str: String, badWords: HashMap[String, String]): String =
        if (badWords.contains(str)) badWords(str) else str
}

object CensorTest extends Censor {
    def main(args: Array[String]) = {
        val uncensored = "Oh shoot it's those darn kids again!"
        val badWords = getBadWords
        val censored = replaceBadWords(uncensored, badWords)
        println(censored)
    }
}