@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  example-gradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and EXAMPLE_GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\example-gradle-2018.4.1.jar;%APP_HOME%\lib\jaxrs-2018.4.1.jar;%APP_HOME%\lib\container-2018.4.1.jar;%APP_HOME%\lib\logging-2018.4.1.jar;%APP_HOME%\lib\undertow-2018.4.1.jar;%APP_HOME%\lib\security-2018.4.1.jar;%APP_HOME%\lib\jaxrs-cdi-2018.4.1.jar;%APP_HOME%\lib\asm-6.0.jar;%APP_HOME%\lib\jboss-jaxrs-api_2.0_spec-1.0.0.Final.jar;%APP_HOME%\lib\jackson-core-2.8.9.jar;%APP_HOME%\lib\jackson-annotations-2.8.9.jar;%APP_HOME%\lib\jackson-databind-2.8.9.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.8.9.jar;%APP_HOME%\lib\meta-spi-2018.4.1.jar;%APP_HOME%\lib\spi-2018.4.1.jar;%APP_HOME%\lib\bootstrap-2018.4.1.jar;%APP_HOME%\lib\config-api-1.3.0.jar;%APP_HOME%\lib\jboss-logging-3.3.1.Final.jar;%APP_HOME%\lib\io-2018.4.1.jar;%APP_HOME%\lib\ee-2018.4.1.jar;%APP_HOME%\lib\request-controller-2018.4.1.jar;%APP_HOME%\lib\shrinkwrap-descriptors-api-jboss-2.0.0.jar;%APP_HOME%\lib\shrinkwrap-descriptors-impl-jboss-2.0.0.jar;%APP_HOME%\lib\shrinkwrap-descriptors-api-javaee-2.0.0.jar;%APP_HOME%\lib\shrinkwrap-descriptors-impl-javaee-2.0.0.jar;%APP_HOME%\lib\asm-commons-6.0.jar;%APP_HOME%\lib\jboss-servlet-api_3.1_spec-1.0.0.Final.jar;%APP_HOME%\lib\jboss-websocket-api_1.1_spec-1.1.1.Final.jar;%APP_HOME%\lib\undertow-servlet-1.4.18.Final.jar;%APP_HOME%\lib\elytron-2018.4.1.jar;%APP_HOME%\lib\jboss-annotations-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.8.9.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.8.9.jar;%APP_HOME%\lib\shrinkwrap-api-1.2.6.jar;%APP_HOME%\lib\shrinkwrap-impl-base-1.2.6.jar;%APP_HOME%\lib\jandex-2.0.3.Final.jar;%APP_HOME%\lib\jboss-modules-1.6.0.Final.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\config-api-runtime-1.3.0.jar;%APP_HOME%\lib\naming-2018.4.1.jar;%APP_HOME%\lib\jboss-concurrency-api_1.0_spec-1.0.0.Final.jar;%APP_HOME%\lib\jboss-interceptors-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\jboss-el-api_3.0_spec-1.0.9.Final.jar;%APP_HOME%\lib\javax.el-impl-3.0.1-b08-jbossorg-1.jar;%APP_HOME%\lib\shrinkwrap-descriptors-api-base-2.0.0.jar;%APP_HOME%\lib\shrinkwrap-descriptors-impl-base-2.0.0.jar;%APP_HOME%\lib\asm-tree-6.0.jar;%APP_HOME%\lib\undertow-core-1.4.18.Final.jar;%APP_HOME%\lib\shrinkwrap-spi-1.2.6.jar;%APP_HOME%\lib\shrinkwrap-descriptors-spi-2.0.0.jar;%APP_HOME%\lib\xnio-api-3.3.8.Final.jar;%APP_HOME%\lib\xnio-nio-3.3.8.Final.jar

@rem Execute example-gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %EXAMPLE_GRADLE_OPTS%  -classpath "%CLASSPATH%" org.wildfly.swarm.examples.gradle.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable EXAMPLE_GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%EXAMPLE_GRADLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
