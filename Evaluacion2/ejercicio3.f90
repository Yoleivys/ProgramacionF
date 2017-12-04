
program fun_seno

    implicit none                  
    real (kind=8) :: x2, sin_x2,sin_x3,y
    integer :: n2, npts,i,s,k
    integer,parameter :: Pi=3.1416

    s = 10               ! number of terms to use
    npts=720
    
    open (3,file ='ejercicio3.txt', status ='unknown')

    do k=1,s     
       
       n2=k
        do i=-npts,npts
        
        x2 = real(i)*Pi/180.
        y=x2
       call fun_sin (x2,n2,sin_x2)

       sin_x3=sin_x2

       write (3,*) x2, sin_x3, y
         end do
         write (3,*) ''
         write (3,*) ''
     end do
   close (1)

  end program fun_seno

  
!==========================
subroutine fun_sin(x,n,sin_x)
!==========================
    implicit none

    ! subroutine arguments:
    real (kind=8), intent(in) :: x
    integer, intent(in) :: n
    real (kind=8), intent (out) :: sin_x
    

    ! local variables:
    real (kind=8) :: term, partial_sum
    integer :: j
    
    !inicialition 
    term = x
    partial_sum = term
    
    do j=1,n
       ! j'th term is  x**2j+1 / 2j+1!  which is the previous term
       ! times x**2/(2*j*(2*j+1)
        term = (-1**j)*(term*x*x)/(2*j*(2*j+1)) 
        ! add this term to the partial sum:
        partial_sum = partial_sum + term  
     enddo
     
      sin_x = partial_sum   ! this is the value returned

    
end subroutine  fun_sin

! --------  End -------------

 
