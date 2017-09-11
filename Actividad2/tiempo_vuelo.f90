program tiempo_vuelo

  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, v0, tv

 
  write(*,*) 'Dame el ángulo y la rapidez inicial'
  read(*,*) a, v0

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0

  ! la ecuacion de tiempo de vuelo es
  tv = (2 * v0 * sin (a))/ g

  !escribiendo el resultado en la pantalla
  write(*,*) 'tiempo de vuelo es = ', tv, ' segundos'

  end program tiempo_vuelo
