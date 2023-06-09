! 3次元ベクトルの正規化
Program Ans
 implicit none
 REAL vector(3)
 REAL vecsize
 INTEGER i
 
 vector = (/ 77.7777 , 25.754987983 ,  77.2479857329 /)
 
 vecsize = sqrt(vector(1)**2 + vector(2)**2 + vector(3)**2)
 
 IF (vecsize==0) THEN
  WRITE(*,*)"ゼロ除算エラーです"
  
 ELSE
  vector = vector/vecsize
  WRITE(*,*) vector
  
 END IF

END Program Ans