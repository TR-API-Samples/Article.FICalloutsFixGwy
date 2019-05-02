set QFJ_BIN=%~dp0
set QFJ_HOME=%QFJ_BIN%../
set LIBS=%QFJ_HOME%\libs
set APP=com.thomsonreuters.atr.rawlings.Rawlings
set LOGBACKCFG="-Dlogback.configuration=%QFJ_HOME%\config\logback.xml"
set CLASSPATH=%LIBS%\animal-sniffer-annotations-1.14.jar;%LIBS%\checker-qual-2.0.0.jar;%LIBS%\error_prone_annotations-2.1.3.jar;%LIBS%\guava-25.1-jre.jar;%LIBS%\j2objc-annotations-1.1.jar;%LIBS%\logback-classic-1.2.3.jar;%LIBS%\logback-core-1.2.3.jar;%LIBS%\lombok-1.16.18.jar;%LIBS%\mina-core-2.0.16.jar;%LIBS%\quickfixj-all-1.7.5-SNAPSHOT.jar;%LIBS%\slf4j-api-1.7.25.jar;%LIBS%\rawlings-DEV.jar
set CONFIG=%QFJ_HOME%\config\gateway.cfg
java -Djavax.net.debug=ssl,handshake -enableassertions -classpath %CLASSPATH% %LOGBACKCFG% %APP% %CONFIG% 
