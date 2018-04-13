// Evaluate 1 + 1 and then 1 + "one"
writeln(1 + 1)
e := try(writeln(1 + "one"))
e catch(Exception, 
    writeln("Io is strongly typed")
)

// Test true/false equivalence
if(0, "0 is true" println, "0 is false" println)
if("", "\"\" is true" println, "\"\" is false" println)
if(nil, "nil is true" println, "nil is false" println)

// check slots of an object
Person := Object clone
Person name := ""
Person age := 0
Person hi := method("Hi my name is #{name} and I am #{age}" interpolate println)
me := Person clone
me name := "Scott McAllister"
me age := 27
slots := me slotNames
slots foreach(i, v, v println)

// Execute the code in a slot given its name.
me ?hi