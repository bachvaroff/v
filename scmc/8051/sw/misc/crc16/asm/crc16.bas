HEX

01H GOSUB 20H
02H FOR A = 0H TO 1FFFH
03H REM B = CBYTE(A)
04H B = XBYTE(A)
05H PRINT A, Z, B,
06H GOSUB 30H
07H PRINT Z
08H NEXT A
09H GOSUB 25H
0AH PRINT Z
0BH END

20H REM INIT CRC16 CCITT FALSE
21H REM SET P Y Z
22H P = 1021H : Y = 0H
23H Z = 0FFFFH
24H RETURN

25H REM FINAL UPDATE Z
26H Z = Z X. Y
27H RETURN

30H REM UPDATE Z IN B USE M F
31H M = 80H
32H F = (Z A. 8000H) <> 0H
33H F = F X. ((B A. M) <> 0H)
34H Z = Z * 2H
35H IF F Z = Z X. P
36H M = M / 2H
37H IF M <> 0H GOTO 32H
38H RETURN

