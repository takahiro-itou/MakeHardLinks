
FOR %%f in (%*) do (
    @ECHO %%f
    @call :create_link %%f
)

EXIT /B

:create_link
@ECHO "Create link to %1"
@ECHO ON
MKLINK /H "%~nx1" %1
@ECHO OFF
