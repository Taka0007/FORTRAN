! 2分法で方程式の根を求めるプログラム
Program task4
Implicit None

REAL  I, left, right, mid
DOUBLE PRECISION error

left = 1.5
right = 4.0
mid = (left+right)/2
READ *, error

DO WHILE(ABS(f(mid))>error)
 IF (f(mid)<0) THEN
  left = mid
  mid = (left+right)/2

 ELSE
  right = mid
  mid = (left+right)/2
 END IF
END DO

WRITE(*,*)'許容誤差'
PRINT '(f6.4)',error
WRITE(*,*)'解',mid

STOP

CONTAINS

REAL FUNCTION f(x)
 Implicit None
 REAL x
 f = 2*(x**3)-3*(x**2)-12*x+5
 RETURN
END FUNCTION f

END Program task4
