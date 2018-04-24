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