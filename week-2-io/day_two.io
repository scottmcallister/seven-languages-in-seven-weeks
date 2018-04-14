// Fibonacci sequence
fibonacci := method(num,
    if(num <= 2, 1,
        fibonacci(num - 2) + fibonacci(num - 1)
    )
)
fibonacciAlt := method(num,
    if(num <= 1, num,
        fib := 1
        prev := 1
        i := 2
        while(i < num,
            temp := fib
            fib = fib + prev
            prev = temp
            i = i + 1
        )
        fib
    )
    
)
n := 1
"fibonacci with recursion" println
while(n < 10, 
    fibonacci(n) println
    n = n + 1
)
n = 1
"fibonacci without recursion" println
while(n < 10, 
    fibonacciAlt(n) println
    n = n + 1
)

// change / to return 0 if denominator is 0
"overriding \"\/\" operator to return 0 if denominator is 0" println
div := Number getSlot("/")
Number / := method(i,
    if(i != 0, div(i), 0)
)
"4 / 2: " print
4 / 2 println
"10 / 0: " print
10 / 0 println

// add all numbers in 2d array
twoDimArray := list(list(1, 2, 3), list(4, 5, 6))
addAll := method(l, l flatten sum)
"sum of [[1, 2, 3], [4, 5, 6]]: " print
addAll(twoDimArray) println

// add a slot called myAverage to a list that computes the average of all the numbers
numList := list(1, 2, 3, 4, 5, 6)
numList myAverage := numList average
numList myAverage println

// create a 2d list "matrix" class
Matrix := Object clone
Matrix grid := list()
Matrix dim := method(x, y, 
    for(i, 0, x - 1,
        grid append(list())
        for(j, 0, y - 1,
            grid at(i) append(0)
        )
    )
)
Matrix set := method(x, y, val,
    grid at(x) atPut(y, val)
)
Matrix get := method(x, y,
    grid at(x) at(y)
)
Matrix show := method(
    val := "\n\nMatrix grid: \n\n"
    for(i, 0, grid size - 1,
        for(j, 0, grid at(i) size - 1,
            val = "#{val}#{get(i, j)} " interpolate
        )
        val = "#{val}\n" interpolate
    )
)
neo := Matrix
neo dim(3, 3)
neo set(1, 1, 1)
neo show println
neo get(1, 1) println