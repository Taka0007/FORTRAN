Program Ans
Implicit None

INTEGER I,J
REAL A,B,pi,S_1,S_2,ac_sin1,ac_sin2,rad1,rad2,error1,error2

pi = 3.141592
A   = 1.0
B   = 1.0
S_1 = 0.0
S_2 = 0.0

!pi/4の時
rad1 = pi/4
ac_sin1 = SIN(rad1)

DO I=1,20
 ! (1/階乗)の計算
 A = A/I

 IF (MOD(I,4)==3) THEN
  S_1 = S_1 - (A)*(rad1**I)
 END IF

 IF (MOD(I,4)==1) THEN
  S_1 = S_1 + (A)*(rad1**I)
 END IF

 IF (I==6 .OR. I==10 .OR. I==14) THEN
  error1 = ABS(ac_sin1-S_1)/ac_sin1
  WRITE(*,*)I/2,'項目までの誤差は',error1
 END IF
END DO

!pi/2の時
rad2 = pi/2
ac_sin2 = SIN(rad2)
	
DO J=1,20
 ! (1/階乗)の計算
 B = B/J

 IF (MOD(J,4)==3) THEN
  S_2 = S_2 - (B)*(rad2**J)
 END IF

 IF (MOD(J,4)==1) THEN
  S_2 = S_2 + (B)*(rad2**J)
 END IF

 IF (J==6 .OR. J==10 .OR. J==14) THEN
  error2 = ABS(ac_sin2-S_2)/ac_sin2
  WRITE(*,*)J/2,'項目までの誤差は',error2
 END IF
END DO
END Program Ans
