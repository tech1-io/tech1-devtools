@echo off
set java_old_versions_pattern=1.
java -version 2> outputfile1.txt

set /p text=< outputfile.txt

for /f ^"tokens^=1^ delims^=^"^" %%a in (^"%text:*"=%^") do (
	set result=%%a
)

echo %text% | findstr /C:version 1>nul

if errorlevel 1 (
  echo Java not found on your machine! Java 11 must be installed and added to the PATH variable
) ELSE (
  if %result:~0,2%==%java_old_versions_pattern% (
  	for /f "tokens=2 delims=." %%a in ("%result%") do (
  		echo Current version of Java: %%a
  		echo Application minimum reqired Java version is 11. Java 11 must be added to the PATH variable. Please, update your current Java version and use this check again!
  	)
  ) ELSE (
  	for /f "tokens=1 delims=." %%a in ("%result%") do (
  		if %%a GEQ 11 (
  			echo Current version of Java: %%a
  			echo You can use application successfully
  		) ELSE (
  			echo Current version of Java: %%a
  			echo Application minimum reqired Java version is 11. Java 11 must be added to the PATH variable. Please, update your current Java version and use this check again!
  		)
  	)
  )
)

del outputfile1.txt