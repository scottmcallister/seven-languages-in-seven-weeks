package example

class Board {
  var matrix = Array.ofDim[Int](3,3)
  def insert(val row: Int, val col: Int, val value: Int) = matrix[row][col] = value
}