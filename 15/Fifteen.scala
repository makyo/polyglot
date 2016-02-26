object Fifteen {
    // This isn't very efficient at all, but it felt good to write.
    def pascal(row: Int, col: Int): BigInt = (row, col) match {
        case (1, col) => BigInt(1)
        case (row, 1) => BigInt(1)
        case (2, col) => BigInt(col)
        case (row, 2) => BigInt(row)
        case _        => {
            if (row == col)
                pascal(row - 1, col) * 2
            else
                pascal(row - 1, col) + pascal(row, col - 1)
        }
    }

    def main(args: Array[String]): Unit = {
        println(pascal(21, 21))
    }
}
