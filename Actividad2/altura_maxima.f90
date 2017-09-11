program altura_maxima

  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, v0, hm


  write(*,*) 'Dame el ángulo y la rapidez inicial'
  read(*,*) a, v0

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0
  ! la ecuacion de tiempo de vuelo es
  hm = (v0**2  * (sin (a))**2)/( 2 * g)
  

  !escribiendo el resultado en la pantalla
  write(*,*) 'la altura maxima es  = ', hm, ' metros'

 
  end program altura_maxima
