! 3次元ベクトルの大きさを求める
Program Ans
 implicit none
 REAL vector(3)
 REAL vecsize
 INTEGER i
 
 vector = (/ 77.7777 , 25.754987983 ,  77.2479857329 /)
 
 vecsize = sqrt(vector(1)**2 + vector(2)**2 + vector(3)**2)

 WRITE(*,*) vecsize

END Program Ans         