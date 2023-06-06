Program Ans
Implicit None
 REAL N,ans1,ans2,ans3,ans4,ans5,width,ans6
 INTEGER I
 
 ans1 = 0.0
 ans2 = 0.0
 ans3 = 0.0
 ans4 = 0.0
 ans5 = 0.0
 ans6 = 0.0
 
 DO I=0,10
  width = (1-0)/10.0
   IF (I==0 .OR. I==10) THEN
    ans1 = ans1 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans1 = ans1 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans1 = ans1 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'10分割の時',ans1

 DO I=0,20
  width = (1-0)/20.0
   IF (I==0 .OR. I==20) THEN
    ans2 = ans2 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans2 = ans2 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans2 = ans2 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'20分割の時',ans2


 DO I=0,30
  width = (1-0)/30.0
   IF (I==0 .OR. I==30) THEN
    ans3 = ans3 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans3 = ans3 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans3 = ans3 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'30分割の時',ans3

 DO I=0,40
  width = (1-0)/40.0
   IF (I==0 .OR. I==40) THEN
    ans4 = ans4 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans4 = ans4 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans4 = ans4 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'40分割の時',ans4


 DO I=0,50
  width = (1-0)/50.0
   IF (I==0 .OR. I==50) THEN
    ans5 = ans5 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans5 = ans5 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans5 = ans5 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'50分割の時',ans5

 WRITE(*,*)'おまけ'
 
 DO I=0,1000
  width = (1-0)/1000.0
   IF (I==0 .OR. I==1000) THEN
    ans6 = ans6 + (f(0+ width*I))*(width/3.0)
   ELSE IF (MOD(I,2)==0) THEN
    ans6 = ans6 + 2*(f(0+width*I))*(width/3.0)
   ELSE
    ans6 = ans6 + 4*(f(0+width*I))*(width/3.0)
   END IF
 END DO
 WRITE(*,*)'1000分割の時',ans6

CONTAINS

REAL FUNCTION f(x)
 Implicit None
 REAL x
 f = 4/(1+x**2)
 RETURN
END FUNCTION f

END Program Ans