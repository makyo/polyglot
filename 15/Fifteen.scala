object Fifteen {
    // This isn't very efficient at all, but it felt very Scala to write.
    def pascal(row: Int, col: Int): Long = (row, col) match {
        case (1, col) => 1.toLong
        case (row, 1) => 1.toLong
        case (2, col) => col.toLong
        case (row, 2) => row.toLong
        case _        => {
            if (row == col)
                pascal(row - 1, col) * 2
            else
                pascal(row - 1, col) + pascal(row, col - 1)
        }
    }

    def pascal2(size: Int): Long = {
        var matrix = Array.fill[Long](size, size)(1)
        var x = 0
        var y = 0

        for (x <- 1 to (size - 1); y <- 1 to (size - 1)) {
            matrix(x)(y) = matrix(x - 1)(y) + matrix(x)(y - 1)
        }

        matrix(size - 1)(size - 1)
    }

    def main(args: Array[String]): Unit = {
        // println(pascal(21, 21))
        println(pascal2(21))
    }
}
