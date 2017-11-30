program movimiento
  !Este programa calcula la trayectoria de la tierra alrededor del sol
  ! y el de la luna alrededor de la tierra
  
  implicit none
  integer :: i
  integer, parameter:: ntime = 8800
  double precision  ::xpos_tierra, ypos_tierra
  double precision  ::xpos_luna, ypos_luna
  double precision, parameter :: pi=3.14159d0
  double precision, parameter ::T_tierra =8.766d3, T_luna =6.56d2 
  double precision :: AngTierra, AngLuna
  double precision, dimension(0:ntime):: xt, yt, xl, yl, dt

  open (1, file='TierraLuna.txt', status= 'unknown')
 
 do i=0,ntime,12
     
     dt(i) = dble (i)
     
     ! intervalo de ángulo tierra
    AngTierra = (2.0d0*pi*dt(i))/T_tierra

     ! intervalo de ángulo tierra
    AngLuna = (2.0d0*pi*dt(i))/T_luna
     ! llamando subroutina 

    call posicion (AngTierra, AngLuna,xpos_tierra,ypos_tierra,xpos_luna,ypos_luna)
    
    xt(i)=xpos_tierra
    yt(i)=ypos_tierra
    xl(i)=xpos_luna
    yl(i)=ypos_luna
    
     write (1,*)   xt (i), yt (i), xl (i), yl (i)
end do
  close (1)

end program movimiento

!************************************************************************************
   
Subroutine posicion (Ang1,Ang2,x_tierra, y_tierra, x_luna, y_luna)
  implicit none
  
  double precision ,intent (in)::Ang1, Ang2
  double precision , intent (out)::x_luna, y_luna
  double precision ,  intent (out)::x_tierra, y_tierra
  
  ! variables locales 
  double precision, parameter :: R1=1.496d8          ! distancia entre la tierra y el sol
  double precision, parameter :: R2=1.496d7       !  distancia entre la tierra y la luna
     
  x_tierra = R1*dcos(Ang1)
  y_tierra = R1*dsin(Ang1)
  x_luna = R1*dcos(Ang1) + R2*dcos(Ang2)
  y_luna = R1*dsin(Ang1) + R2*dsin(Ang2)

end subroutine posicion   
