program calculation
    implicit none
    
    character (len = 20) :: f_name, l_name
    
    print *, "What's your name "
    read *, f_name, l_name

    print *, "Hello ", trim(f_name), " ", trim(l_name)

end program calculation