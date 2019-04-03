Logback usage
=============


Integration
===========


maven
-----
		<dependency>
			<groupId>ch.qos.logback</groupId>
			<artifactId>logback-classic</artifactId>
			<version>1.2.3</version>
		</dependency>

java
----


    protected Logger logger= LoggerFactory.getLogger(getClass());

	private Properties loadConfig(){
		Properties properties = new Properties();
		try {
			InputStream resourceAsStream = getClass().getClassLoader().getResourceAsStream(PROPERTIES_FILE);
			properties.load( resourceAsStream );
		} catch (IOException e) {
			logger.error("Impossible de charger le fichier de config {}",PROPERTIES_FILE,e);
			throw new PanicError("Impossible de charger le fichier de config "+PROPERTIES_FILE,e);
		}
		return properties;
	}


logback.xml
-----------

The logback file should be well configured and think of some points:
- The file path of your log and the rolling policy
- The main log level and the specialisation
    The root level is a default level and can be lowered or raised for any logger.

Some not very known feature of logbakc are very powerfull: 
 - you can get method name and line number: for seom bad loggers it could be usefull
 - you can have a static alignment, which is very good for readability under less.
 
- the log pattern format
There are many things you can do for having a good format result:
   - if using an ANSI console (not windows) you can have colors
   - Use a simple but good pattern to separate the different fields
   - use static format to make alignement good in text editor on console: the %10.10t for thread name for exampme
   - fields to have, minimum:
      date/time
      thread (if multi thread)
      level
      logger
      message
   - fields to have, optional:
     method name %M
     line number (%L)
      
      
    


    <?xml version="1.0" encoding="UTF-8"?>
    <configuration>

	<property name="LOG_HOME" value="/var/log" />
	<property name="LOG_FILE" value="your-application" />

	<appender name="FILE" class="ch.qos.logback.core.rolling.RollingFileAppender">
		<file>${LOG_HOME}/${LOG_FILE}.log</file>
		<encoder class="ch.qos.logback.classic.encoder.PatternLayoutEncoder">
			<Pattern>
				%d{yyyy-MM-dd HH:mm:ss} [%thread] %-5level %logger{36} - %msg%n
			</Pattern>
		</encoder>
		<rollingPolicy class="ch.qos.logback.core.rolling.SizeAndTimeBasedRollingPolicy">
			<fileNamePattern>${LOG_HOME}/archived/${LOG_FILE}.%d{yyyy-MM-dd}.%i.log</fileNamePattern>
			<maxFileSize>100MB</maxFileSize>
		</rollingPolicy>
	</appender>

	<logger name="fr.yourcompany" level="debug" additivity="false">
		<appender-ref ref="FILE" />
	</logger>

	<root level="info">
		<appender-ref ref="FILE" />
	</root>

    </configuration>

Tips
====
remove INFO/WARNING logged on startup
-------------------------------------
You have to remove all logback warning in order to remove all INFO logging
see https://stackoverflow.com/questions/3257154/how-to-prevent-logback-from-outputting-its-own-status-at-the-start-of-every-log



