!
!! LeibnizPi.f90
!! 
!! Made by (Yoleivys Delgado Beleño)
!! Login   <yoleivys@ltsp147.example.com>
!! 
!! Started on  Mon Oct 30 12:11:21 2017 Yoleivys Delgado Beleño
!! Last update Time-stamp: <30-oct-2017 12:53:34 yoleivys>
!

Program Calculo_pi
  ! Este programa calcula el valores del numero pi usando la serie de
  ! Leibniz
  ! declaracion de variables
  implicit none
  integer:: i,n  ! numero de la serie
  real :: pi, serie

  ! Pregunta por el numero de terminos de la serie
  write(*,*) 'Escribe el valor de n, número de terminos de la serie'
  read (*,*) n

  serie = 0.
  
  do i=0,n

     serie = serie + (((-1)**i)/(2*real(i) + 1))

  end do
  
pi= serie * 4.

  write (*,*) 'cuando n =',n, 'pi=',pi
end program 
