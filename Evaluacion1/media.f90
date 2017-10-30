!
!! mediaAritmetica.f90
!! 
!! Made by (Yoleivys Delgado Beleño)
!! Login   <yoleivys@ltsp147.example.com>
!! 
!! Started on  Mon Oct 30 11:34:53 2017 Yoleivys Delgado Beleño
!! Last update Time-stamp: <30-oct-2017 12:05:52 yoleivys>

  ! sum.f90
! Performs summations using in a loop using EXIT statement
! Saves input information and the summation in a data file

program summation
implicit none
integer ::  n
real :: sum, sum_inv, a
real :: m_arit, m_armo

write(*,*) "Este programa calcula la media aritmetica y armonica de un&
     & conjunto de datos)"
open(unit=10, file="Datos.Dat")

! inicializacion de variables

sum = 0.
n=0
sum_inv =0.

do
   write (*,*) 'Escribe el número real, cero para salir'
   read(*,*) a
   
 if (a == 0) then
    exit
    
 else
    n = n + 1
    sum = sum + a
    sum_inv = sum_inv + (1/a)
 end if
 write(10,*) a
end do

m_arit = (1/real(n))*sum
m_armo = real(n)/sum_inv

write(*,*) "Media Aritmetica =", m_arit
write(*,*) 'Media armonica =',m_armo
write(10,*) "Media Aritmetica =", m_arit
write(10,*) 'Media armonica =',m_armo

close(10)

end



