program calculation
    implicit none
    
    ! a simple program collecting user input and outputing it with a hello statement
    ! creating variables for user input
    character (len = 20) :: f_name, l_name
    
    ! prompting the user for their respective inputs
    print *, "What's your name?: "
    read *, f_name, l_name 

    ! outputting user input with hello presceding it
    print *, "Hello ", trim(f_name), " ", trim(l_name)

    ! how to output and also formating output 
    ! for integer 
    print *, "A number ", 10
    print "(3i5)", 7, 6, 8
    print "(i5)", 7, 6, 8

    ! for floats 
    print "(/, 2f8.5)", 3.1415, 1.234   !"/" is for a newline

    ! for characters
    print "(/, 2a8)", "Name", "Age"

    ! exponential output
    print "(/, e10.3)", 123.456

    ! output containing strings and integer, you can use te same idea for floats as well ... 
    ! you get the vibe ..... lol
    print "(/, a5, i2)", "I am ", 27

end program calculation