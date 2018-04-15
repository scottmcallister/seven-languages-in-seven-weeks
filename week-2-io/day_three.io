// enhance the XML program to add spaces to show indentation
Builder := Object clone
Builder level := 0
Builder spaces := 4
Builder tab := method(" " repeated(level * spaces))
Builder forward := method(
    writeln("#{tab}<" interpolate, call message name, ">")
    level = level + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            writeln("#{tab}#{content}" interpolate))
        )
    level = level - 1
    writeln("#{tab}</" interpolate, call message name, ">"))
Builder  ul(
    li("Io"), 
    li("Lua"), 
    li("JavaScript"))

// create a list syntax that uses brackets
squareBrackets := method(call message arguments)

list := [foo, bar]
list println

// enhance the XML program to handle attributes
// OperatorTable addAssignOperator(":", "atPutNumber")

// curlyBrackets := method(
//     r := Map clone
//     call message arguments foreach(arg,
//         r doMessage(arg)
//         )
//     r
// )

// Map atPutNumber := method(
//     key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
//     value := call evalArgAt(1)
//     " #{key}=\"#{value}\"" interpolate
// )

// Object asParameters := ""

// Map asParameters := method(
// 	params := List clone
// 	foreach(key, value,	
// 		params append("#{key}=\"#{value}\"" interpolate))
//     " " .. params join(" "))

// Builder forward := method(
//     parameters := doMessage(call message arguments first) asParameters
//     writeln("#{tab}<" interpolate, call message name, "#{parameters}>" interpolate)
//     level = level + 1
//     call message arguments foreach(
//         arg,
//         content := self doMessage(arg);
//         if(content type == "Sequence",
//             writeln("#{tab}#{content}" interpolate))
//         )
//     level = level - 1
//     writeln("#{tab}</" interpolate, call message name, ">"))

// Builder  ul({"type": "prototypal"},
//     li("Io"), 
//     li("Lua"), 
//     li("JavaScript"))