PROGRAM Ans
	
	INTEGER I,J
	REAL A,B,pi,S_1,S_2,ac_sin1,ac_sin2,rad1,rad2
	
	pi = 3.141592
	A   = 1.0
	B   = 1.0
	S_1 = 0.0
	S_2 = 0.0
	
	!pi/4の時
	rad1 = pi/4
	ac_sin1 = SIN(rad1)
	
	DO I=1,10
		
		! (1/階乗)の計算
		A = A/I
	
		IF (I%2==1) THEN
			S_1 = S_1 + (A*rad1)
		END IF
		
		IF (I%2==0) THEN
			S_1 = S_1 - (A*rad1)
		END IF
	
		IF (I==3 OR I==5 OR I==7) THEN
			error1 = ABS(ac_sin1-S_1)/ac_sin1
			WRITE(*,*)I,'項目までの誤差は',error1
		END IF
	
	!pi/2の時
	rad2 = pi/2
	ac_sin2 = SIN(rad2)
	
	DO J=1,10
	
		! (1/階乗)の計算
		B = B/J
	
		IF (J%2==1) THEN
			S_2 = S_2 + (B*rad2)
		END IF
		
		IF (J%2==0) THEN
			S_2 = S_2 - (B*rad2)
		END IF
	
		IF (J==3 OR J==5 OR J==7) THEN
			error2 = ABS(ac_sin2-S_2)/ac_sin2
			WRITE(*,*)J,'項目までの誤差は',error2
		END IF
		
end
