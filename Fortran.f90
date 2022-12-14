program calculation
    implicit none
    
    ! these variable declaration belongs to line 54
    ! this is because fortran needs you to have your variable delared from the start,
    ! variable declarations can't happn betwen codes but at the very start
    real :: float_num = 1.111111111111111
    real :: float_num2 = 1.111111111111111
    double precision :: dbl_num = 1.1111111111111111d+0
    double precision :: dbl_num2 = 1.1111111111111111d+0
    real :: rand(1)
    integer :: low = 1, high = 10

    real, parameter :: PI = 3.1415  !the "parameter" keyword is for declaring a constant value

    ! variables for conditionals from line 96
    integer :: age = 16

    ! variables for looping 
    integer :: n = 0, m = 1
    integer :: secret_num = 7

    ! variables for arrays
    integer, dimension(1:5) :: a1, a2, a3
    real, dimension(1:50) :: aR1
    ! Create multidimensional array (Matrix)
    integer, dimension(5,5) :: a4
    integer :: l, o, x, y
    
    ! Define an array thats size is determined
    ! at run time
    integer, dimension(:), allocatable :: a5
    integer :: num_vals = 0
    
    integer, dimension(1:9) :: a6 = (/ 1,2,3,4,5,6,7,8,9 /)
    integer, dimension(1:3,1:3) :: a7

    ! a simple program collecting user input and outputing it with a hello statement
    ! creating variables for user input
    character (len = 20) :: f_name, l_name
    
    ! prompting the user for their respective inputs
    print *, "What's your name?: "
    read *, f_name, l_name 

    ! outputting user input with hello presceding it
    print *, "Hello ", trim(f_name), " ", trim(l_name)

    ! #################### how to output and also formating output  ######################
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

    ! ################### working with math operators #######################
    ! see line four for declared variables

    print "(/, a8, i1)", "5 + 4 = ", (5 + 4)
    print "(a8, i1)", "5 - 4 = ", (5 - 4)
    print "(a8, i2)", "5 * 4 = ", (5 * 4)
    print "(a8, i1)", "5 / 4 = ", (5 / 4)

    ! Modulors operation
    print "(/, a8, i1)", "5 % 4 = ", mod(5,4)
    
    ! Exponentiation operation
    print "(/, a7, i3)", "5**4 = ", (5**4)
    
    ! 6 digit precesion on output 
    print "(/, f17.15)", float_num + float_num2
    
    ! Doubles are accurate to 15 digits
    print "(/, f18.16)", dbl_num + dbl_num2
    
    ! Generating random numbers between 1 and 10
    call random_number(rand)
    print "(/, i2)", low + floor((high + 1 - low) * rand)

    ! making use of maths functions
    print "(/, a10, i1)", "ABS(-1) = ", ABS(-1)
    print "(a11, f3.1)", "SQRT(81) = ", SQRT(81.0)
    print "(a9, f7.5)", "EXP(1) = ", EXP(1.0)
    print "(a12, f7.5)", "LOG(2.71) = ", LOG(2.71)
    print "(a12, i1)", "INT(2.71) = ", INT(2.71)
    print "(a13, i1)", "NINT(2.71) = ", NINT(2.71)
    print "(a14, i1)", "FLOOR(2.71) = ", FLOOR(2.71)
    print "(a15, f3.1)", "MAX(2.7,3.4) = ", MAX(2.7,3.4)
    print "(a15, f3.1)", "MIN(2.7,3.4) = ", MIN(2.7,3.4)
    
    ! making use of trigonometry functions
    print "(/, a14, f3.1)", "SIN(1.5708) = ", SIN(1.5708)
    print "(a14, f3.1)", "COS(1.5708) = ", COS(1.5708)
    print "(a14, f3.1)", "TAN(1.5708) = ", TAN(1.5708)
    print "(a10, f3.1)", "ASIN(0) = ", ASIN(0.0)
    print "(a10, f3.1)", "ACOS(0) = ", ACOS(0.0)
    print "(a10, f3.1, /)", "ATAN(0) = ", ATAN(0.0)

    ! ################## Conditionals ##################
    ! see line 16 for declared variables
    ! Relational Operators : == /= > < >= <=
    ! Logical Operators : .and. .or. .not.
    if ((age >= 5) .and. (age <= 6)) then
        print *, "Kindergarten"
    else if ((age >= 7) .and. (age <= 13)) then
        print *, "Middle School"
    else if ((age >= 14) .and. (age <= 18)) then
        print *, "High School"
    else
        print *, "Stay Home"
    end if

    print *, .true. .or. .false.
    print *, .not. .true.
    print *, 5 /= 9
    
    ! Can be used with letters
    print *, "a" < "b"
    
    ! Select case, kind of similar to switch in c++
    select case (age)
    case (5)
        print *, "Kindergarten"
    case (6:13)
        print *, "Middle School"
    case (14,15,16,17,18)
        print *, "High School"
    case default
        print *, "Stay Home"
    end select

    ! ###################### Looping ##############################
    ! see line 19 for declared variables
    ! Start, Finish, value to increment by
    do n = 1, 10, 1
        print "(i1)", n
    end do
    
    ! Exit & Cycle
    ! Print only evens
    do while (m < 20)
        if (MOD(m,2) == 0) then
        print "(i1)", m
        m = m + 1
        ! Jumps back to beginning of loop
        cycle
        end if
        m = m + 1
        if (m >= 10) then
        ! Exits the loop all together
        exit
        end if
    end do
    
    ! Continue looping while a condition is true
    do while (n /= secret_num)
        print *, "What's your guess?: "
        read *, n
    end do
    print *, "You guessed it!"

    ! #################### Arrays #######################################
  
    ! Assign values (Starts at index 1)
    a1(1) = 5
    ! Retrieve value
    print "(i1)", a1(1)
    
    ! Assign values with a loop
    do l = 1,5
        a1(l) = l
    end do
    do l = 1,5
        print "(i1)", a1(l)
    end do
    
    ! Get a range
    print "(3i2)", a1(1:3)
    
    ! Get a range with an increment
    print "(2i2)", a1(1:3:2)
    
    ! Assign values to a multidimensional array
    do l = 1,5
        do o = 1, 5
        a4(l,o) = l
        end do
    end do
    do l = 1,5
        do o = 1, 5
        print "(i1,a1,i1,a3,i1)", l, " ", o, " : ", a4(l,o)
        end do
    end do
    
    ! Use an implied do loop to print each row
    ! on one line
    do l = 1,5
        print "(5i1)", ( a4(l,o), o = 1,5 )
    end do
    
    ! Get size
    print "(i2)", Size(a1)
    print "(i2)", Size(a4)
    
    ! Number of dimensions
    print "(i2)", Rank(a4)
    
    ! Elements in each dimension
    print "(i2)", Shape(a4)
    
    ! Define array size at run time
    print *, "Size of array? "
    read *, num_vals
    allocate(a5(1:num_vals))
    do l = 1,num_vals
        a5(l) = l
    end do
    do l = 1,num_vals
        print "(i1)", a5(l)
    end do
    
    ! Change all values in array
    a2 = (/1,2,3,6,7/)
    
    ! Implied do loop
    print "(5i1)", ( a2(o), o = 1,5 )
    
    ! Reshape the ARRAY from 1x9 t0 3x3
    a7 = reshape(a6, (/ 3, 3 /))
    
    ! Check if values are equal across
    ! the 1 dimension
    print "(l1)", all(a1==a2, 1)
    
    ! Are any equal?
    print "(l1)", any(a1==a2, 1)
    
    ! How many are equal
    print "(i1)", count(a1==a2, 1)
    
    ! Get min and max value
    print "(i1)", maxval(a1)
    print "(i1)", minval(a1)
    
    ! Get product and sum
    print "(i3)", product(a1)
    print "(i2)", sum(a1)

end program calculation