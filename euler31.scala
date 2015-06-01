// from the recfun homework in the coursera scala progfun class
// which in turn is the classic SICP example.

object euler31 {
  def countChange(money: Int, coins: List[Int]): Int = {
    if (money == 0) 1
    else if (money < 0 || coins.isEmpty) 0
    else countChange(money - coins.head, coins) + countChange(money, coins.tail)
  }

  def main(args: Array[String]) {
    println(countChange(200, List(1,2,5,10,20,50,100,200)))
  }
}
