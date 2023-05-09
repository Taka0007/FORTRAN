! エラトステネスの篩を実装
! 2-1500までの数を調べ、素数が110個見つかったら終了するコード
! 「2 3 4 5」 などのように一行に4つ出力する
Program Answer
Implicit None

INTEGER I,J,num(1500),cou
cou = 0

DO I=1,1500
    num(I)=0
END DO

DO I =2,1500
    IF( num(I).EQ.0 ) THEN
        cou = cou+1
        WRITE(*,'(I6)',ADVANCE='NO') I
        
        IF (cou.EQ.110) THEN
            EXIT
        END IF
        
        IF (MOD(cou,4).EQ.0) THEN
            WRITE(*,*)
        END IF
            
        DO J=2*i,1500,I
            num(J)=1
        END DO
    END IF
END DO
    
END Program Answer
