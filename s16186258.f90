program calculation
    implicit none
    
    ! a simple program collecting user input and outputing it with a hello statement
    ! creating variables for user input
    character (len = 20) :: f_name, l_name
    
    ! prompting the user for their respective inputs
    print *, "What's your name "
    read *, f_name, l_name

    ! outputting user input with hello presceding it
    print *, "Hello ", trim(f_name), " ", trim(l_name)

end program calculation