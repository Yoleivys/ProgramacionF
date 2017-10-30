!
!! areas.f90
!! 
!! Made by (Yoleivys Delgado Beleño)
!! Login   <yoleivys@ltsp147.example.com>
!! 
!! Started on  Mon Oct 30 11:09:01 2017 Yoleivys Delgado Beleño
!! Last update Time-stamp: <30-oct-2017 11:28:47 yoleivys>
!

program Sphere
  ! Este programa calcula el area superficial y volumen de una esfera.
  
! Declaracion de variables y constantes .
! constante=pi
! variables=radio 

  implicit none   

  integer :: ierr
  character(1) :: yn
  real :: radius, area, volum
  real, parameter :: pi = 3.141592653589793

  interactive_loop: do

!   Enter inputs.

    write (*,*) 'Enter radius of the sphere..'
    read (*,*,iostat=ierr) radius

!   If radius and height could not be read from input,
!   then cycle through the loop.

    if (ierr /= 0) then
      write(*,*) 'Error, invalid input.'
      cycle interactive_loop
    end if

!   Compute area . 

    area = 4*pi * (radius**2)
    volum= (4/3)*pi*(radius**3)

!   Write the input variables (radius, height)
!   and output (area) to the screen.

    write (*,'(1x,a7,f6.2,5x,a7,f6.2,5x,a5,f6.2)') &
      'radius=',radius,'area=',area,'volum=',volum

    yn = ' '
    yn_loop: do
      write(*,*) 'Perform another calculation? y[n]'
      read(*,'(a1)') yn
      if (yn=='y' .or. yn=='Y') exit yn_loop
      if (yn=='n' .or. yn=='N' .or. yn==' ') exit interactive_loop
    end do yn_loop

  end do interactive_loop

end program Sphere
