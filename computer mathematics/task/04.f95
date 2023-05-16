Program task4
Implicit None

REAL  I, left, right, mid, error

FUNCTION f(x)
 REAL x
 f = 2*(x**3)-3*(x**2)-12*x+5
END FUNCTION

left = 1.5
right = 4.0
mid = (left+right)/2
error = 2**(-10)

DO WHILE(ABS(f(mid))>error)
 IF (f(mid)<0) THEN
  left = mid
  mid = (left+right)/2

 ELSE THEN
  right = mid
  mid = (left+right)/2
 END IF
END DO

WRITE(*,*)'kijyunti',error
WRITE(*,*)'kai',mid

END Program task4
