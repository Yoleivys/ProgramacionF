function funcx (a)
  ! Esta funcion permite onterner la posicion en x de la tierra alrededor del sol
  ! en coordenadas rectangulares.
  implicit none 
  double precision :: funcx
  double precision, intent (in) :: a  ! ángulos barridos 
  double precision, parameter :: R=1.496d8 ! R es el radio de la tierra 
  
  funcx = R * dcos(a)
  
end function funcx
!***********************************************************************************
function funcy (a)
  ! Esta funcion permite onterner la posicion en y de la tierra alrededor del sol
  ! en coordenadas rectangulares.
  implicit none 
  double precision :: funcy
  double precision, intent (in) :: a
  double precision, parameter :: R=1.496d8
  
  funcy = R * dsin(a)
  
end function funcy
!************************************************************************************
program movi_tierra
  implicit none
  integer :: i
  double precision :: a, funcx, funcy
  double precision, parameter :: R=1.496d8, pi=3.141592d0, T=365.26d0
  double precision, dimension(0:366):: x,y,dt, dteta

  open (1, file='Mov_tierra.txt', status= 'unknown')

  do i=0,366
     
     dt(i) = dble (i)
     
     ! intervalo de ángulo
     dteta(i) = (2.0d0*180.0d0*dt(i))/T
     
     ! convertir grados a radianes
     a = (dteta(i)*pi)/180.0d0

     ! llamando funciones
     x(i) = funcx (a)
     y(i) = funcy (a)

     write (1,*)  dt(i), x(i), y(i)

  end do

  close (1)

end program movi_tierra
   
