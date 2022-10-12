                                program stdDevApp
                                
                                    integer, dimension(1:5) :: array
                                    real :: standard_deviation = 0.0

                                    call readData(array)

                                    standard_deviation = stdDev(array)

                                    print *, "Deviation is: "
                                    print *, standard_deviation
                                
                                end program stdDevApp

                                
                                subroutine readData(arr)
                                    implicit none
                                    integer, dimension(1:5) :: arr

                                    print *, "Please input 5 values: "
                                    read *, arr

                                end subroutine readData

                                function stdDev(arr)
                                    integer, dimension(1:5) :: arr
                                    real, dimension(1:5) :: array_

                                    real :: summation = 0.0
                                    real :: summation_ = 0.0
                                    real :: mean = 0.0

                                    real :: variance = 0.0
                                    integer :: n = 0

                                    summation = sum(arr)

                                    mean = summation / 5.0

                                    do n = 1, 5
                                        array_(n) = arr(n) - mean
                                    end do
                                    
                                    do n = 1, 5
                                        array_(n) = (array_(n) ** 2)
                                    end do

                                    summation_ = sum(array_)

                                    variance = (summation_ / 5.0)

                                    stdDev = SQRT(variance)

                                end function stdDev