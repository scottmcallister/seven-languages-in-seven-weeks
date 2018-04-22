class Board(board: List[List[String]]) {
    val rows = (0 to board.size-1).map(index => board(index))
    val cols = (0 to board.size-1).map(index => board.map(row => row(index)))
    val diags = List(List(board(0)(0), board(1)(1), board(2)(2))
                    ,List(board(0)(2), board(1)(1), board(2)(0)))

    def checkWinner : String = {
        var winner = "none"
        val checkList = (l: List[String]) => {
            if (l.toSet.size == 1) { winner = l(0) }
        }
        for (row <- rows) checkList(row)
        for (col <- cols) checkList(col)
        for (diag <- diags) checkList(diag)
        winner
    }
}

object TicTacToe {
    def main(args: Array[String]) = {
        var grid = List(List("X","O","O")
                       ,List("O","X","X")
                       ,List("X","O","O"))
        val boardOne = new Board(grid)
        val winnerOne = boardOne.checkWinner
        println("winner of board one: " + winnerOne)
        grid = List(List("X","O","O")
                   ,List("X","O","X")
                   ,List("X","X","O"))
        val boardTwo = new Board(grid)
        val winnerTwo = boardTwo.checkWinner
        println("winner of board two: " + winnerTwo)
    }
}