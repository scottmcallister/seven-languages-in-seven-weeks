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
Matrix := List clone
Matrix dim := method(x, y,
    grid := Matrix clone
    for(i, 0, y - 1,
        grid append(list())
        for(j, 0, x - 1,
            grid at(i) append(0)
        )
    )
    return grid
)
Matrix set := method(x, y, val,
    self at(y) atPut(x, val)
)
Matrix get := method(x, y,
    self at(y) at(x)
)
Matrix show := method(
    val := "\n\nMatrix grid: \n\n"
    for(i, 0, self size - 1,
        for(j, 0, self at(i) size - 1,
            val = "#{val}#{get(i, j)} " interpolate
        )
        val = "#{val}\n" interpolate
    )
)

// write a transpose method so that (new_matrix get(y, x)) == matrix get(x, y)
Matrix transpose := method(
    height := self size
    width := self first size
    newMatrix := self dim(height, width)
    for (y, 0, height - 1,
        for(x, 0, width - 1,
            newMatrix at(x) atPut(y, self at(y) at(x))
        )
    )
    return newMatrix
)

m1 := Matrix dim(3, 3)
m1 set(1, 2, 1)
m1 show println
m2 := m1 transpose
m2 show println


// write the matrix to a file, and read a matrix from a file
file := File open("./matrix.txt")
file write(m2 serialized())
file close()

output := doFile("./matrix.txt")
output println

// write a program that gives you ten tries to guess a random number from 1–100
game := method(
    "\n\nGuess a number between 1 and 100" println
    input := File standardInput()
    number := Random value(100) floor + 1
    tryNum := 1
    prevGuess := nil
    while(tryNum <= 10,
        guess := input readLine() asNumber()
        if(guess == number,
            "You win!" println
            break,
            if(prevGuess != nil,
                hotter := ((number - guess) abs()) < ((number - prevGuess) abs())
                if(hotter, "hotter" println, "colder" println)
                , "nope" println
            )
            tryNum = tryNum + 1
            prevGuess = guess
        )
    )
    "You lose :(" println
)

game