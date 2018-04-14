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

