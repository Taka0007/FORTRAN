Program Ans
Implicit None
INTEGER I,J
REAL num(30),temp,avg,std,mi,disper
DATA num/-1.48, 9.12,-5.96,4.96,-7.98,8.23,-7.84,0.75,8.76,4.27,2.22,-2.97,0.83, &
-1.16,4.57,-0.31,6.53,5.21,0.18,-5.38,9.43,3.57,1.63,3.12,1.48,2.85,6.52,-5.34,7.89,-1.58/

avg = SUM(num)/SIZE(num)
mi = 2**30
disper = 0.0

DO I=1,30
 IF (mi>num(I)) THEN
  mi = num(I)
 END IF
 disper = disper + (num(I)-avg)**2
END DO

std = SQRT(disper)

WRITE(*,*)'平均',avg
WRITE(*,*)'標準偏差',std
WRITE(*,*)'最小値',mi

DO I=1,30
 DO J=I,30
  IF(num(I)>num(J))THEN
   temp = num(I)
   num(I) = num(J)
   num(J) = temp
  END IF
 END DO
END DO

WRITE(*,*)'小さい順'

DO I=1,30
 WRITE(*,'(F0.2)')num(I)
END DO

END Program Ans
