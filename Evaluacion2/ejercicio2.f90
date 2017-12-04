
program functionexp

    implicit none                  
    real (kind=8) :: x2, exp2,exp3
    integer :: n2, npts,i,k,s

    s = 15               ! number of terms to use
    npts=100
    
    open (1,file ='ejercicio2.txt', status ='unknown')

    do k=1,s,2
       n2 = k
        do i=0,npts
        x2 = i*0.1
       
        
       call fun_exp(x2,n2,exp2)

       exp3=exp2
       write (1,*) x2, exp3
      
         end do
         write (1,*) ''
         write (1,*) ''
         
     end do
     
   close (1)

  end program functionexp

  
!==========================
subroutine fun_exp(x,n,exp)
!==========================
    implicit none

    ! subroutine arguments:
    real (kind=8), intent(in) :: x
    integer, intent(in) :: n
    real (kind=8), intent (out) :: exp
    

    ! local variables:
    real (kind=8) :: term, partial_sum
    integer :: j
    
    !inicialition 
    term = 1.
    partial_sum = term
    
    do j=1,n
        ! j'th term is  x**j / j!  which is the previous term times x/j:
        term = term*x/j   
        ! add this term to the partial sum:
        partial_sum = partial_sum + term   
     enddo
       exp = partial_sum  ! this is the value returned
       
end subroutine  fun_exp

! --------  End -------------

 
