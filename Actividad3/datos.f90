program desplazamientos

  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8, pi =3.1415
  real, dimension (20) :: t=0., x=0., y=0.
  real ::tv, a, v0
  integer :: i, j, npoints
  
  write(*,*) ' Movimiento de Proyectiles'
  write(*,*) 'Escribe la rapidez inicial y el numero de puntos'
  read(*,*)  v0, npoints

  loopangulo: do j=15,90,15
    ! convirtiendo ángulo a radianes
     a = j * pi / 180.0

  ! la ecuacion de tiempo de vuelo es
     tv = (2 * v0 * sin(a))/ g
     
     loopposicion: do i= 0, npoints
     t(i) =t(i)+ i * (tv /real(npoints))
     x(i) =x(i)+ v0 * t(i) * cos (a)
     y(i) =  y(i)+ (2* v0 * t(i) * sin (a) - g* t(i)**2 )/ 2
     open (1, file = 'datos.dat', status= 'unknown')
     write(1,1000)  x(i), y(i)
     1000 format (F15.10, 5x, F15.10)
     
  end do loopposicion
  write (1,1100)
     1100 format (//)
  do i = 0,npoints
     t(i)=0
     x(i)=0
     y(i)=0
  end do
 
end do loopangulo

close (1)
end program desplazamientos
