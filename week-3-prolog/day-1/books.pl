book('Game of Thrones', 'George R. R. Martin').
book('A Clash of Kings', 'George R. R. Martin').
book('A Storm of Swords', 'George R. R. Martin').
book('A Feast for Crows', 'George R. R. Martin').
book('A Dance With Dragons', 'George R. R. Martin').
book('It', 'Stephen King').
book('The Shining', 'Stephen King').

asoiaf_books :-
    book(Book, 'George R. R. Martin'),
    write('George R. R. Martin has written '),
    write(Book),
    nl.
