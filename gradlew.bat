@echo off
REM -----------------------------------------------------------------------------
REM Gradle startup script for Windows
REM -----------------------------------------------------------------------------

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=gradlew
set APP_HOME=%DIRNAME%

REM Add default JVM options here. You can also use JAVA_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

REM Determine Java command to use
if not defined JAVA_HOME goto findJavaFromPath
set JAVA_EXE=%JAVA_HOME%\bin\java.exe
if exist "%JAVA_EXE%" goto execute
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
goto fail

:findJavaFromPath
set JAVA_EXE=java
%JAVA_EXE% -version >NUL 2>NUL
if "%ERRORLEVEL%"=="0" goto execute
echo ERROR: JAVA_HOME is not set and java could not be found in your PATH.
goto fail

:execute
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
goto end

:fail
echo.
echo Please set the JAVA_HOME variable and ensure java is in your PATH.
echo.
exit /b 1

:end
