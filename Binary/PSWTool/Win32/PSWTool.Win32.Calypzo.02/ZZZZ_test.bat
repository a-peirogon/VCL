cls
@echo off
REM The hashes below are ZZZZ computed hashes using MD4/MD5/RIPEMD-128/RIPEMD-160 & SHA-1
echo.
echo ============
echo Auditing MD4.
calypzo -noi -alg 0 03d6239720ba64f9f6baa1d7075820a7
echo.
echo ============
echo Auditing MD5..
calypzo -noi -alg 1 4ddf7fd96ffcf749d2f1ee6efb64cc88
echo.
echo ============
echo Auditing RIPEMD-128....
calypzo -noi -alg 2 4d2b45fe93e40419fa18398fd27d1cb9
echo.
echo ============
echo Auditing SHA-1...
calypzo -noi -alg 4 9865d483bc5a94f2e30056fc256ed3066af54d04
echo.
echo ============
echo Auditing RIPEMD-160....
calypzo -noi -alg 3 f54b39d1625991070ca99f155152b52090b0efcd
echo.
echo Finished..
pause