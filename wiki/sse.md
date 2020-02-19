Server Sent Event : SSE
=======================

<https://dzone.com/articles/spring-boot-server-sent-events-tutorial>
<https://www.html5rocks.com/en/tutorials/eventsource/basics/>
<https://developer.mozilla.org/en-US/docs/Web/API/EventSource>
<https://www.w3schools.com/html/html5_serversentevents.asp>  
<https://tools.ietf.org/id/draft-ietf-alto-incr-update-sse-05.html>
<https://tools.ietf.org/html/rfc6202>
<https://www.w3.org/TR/eventsource/>

from rfc6202: disable chuncking

JS code:    
	var evtSource = new EventSource('sse.php');
	evtSource.onmessage = function(e) { ... }

HTTP Stream:
	Content-Type: text/event-stream

	id: 12345\n
	data: GOOG\n
	data: 556\n\n


from Webflux exemple, Content-Type: application/stream+json


Reactive programming
--------------------
<http://projectreactor.io/docs/core/release/reference/#flux>


Java client
-----------
<https://github.com/king/king-http-client>


<https://stackoverflow.com/questions/15495591/looking-for-a-java-implementation-of-the-client-side-of-the-server-sent-events-s>
-> Jersey SSE Client jersey-media-sse-2.2.jar

<https://hc.apache.org/httpcomponents-client-ga/>

square.github.io/okhttp/3.x/okhttp/
<https://github.com/heremaps/oksse>


Notes
-----
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/sse")


java.lang.IllegalStateException: Could not resolve method parameter at index 0 in public java.lang.String fr.enfrasys.maiv.back.ssedemo.SseFluxController.handleBaseException(java.lang.RuntimeException): No suitable resolver for argument 0 of type 'java.lang.RuntimeException'
	at org.springframework.web.method.support.InvocableHandlerMethod.getMethodArgumentValues(InvocableHandlerMethod.java:175) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:131) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver.doResolveHandlerMethodException(ExceptionHandlerExceptionResolver.java:403) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.handler.AbstractHandlerMethodExceptionResolver.doResolveException(AbstractHandlerMethodExceptionResolver.java:61) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.handler.AbstractHandlerExceptionResolver.resolveException(AbstractHandlerExceptionResolver.java:140) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.handler.HandlerExceptionResolverComposite.resolveException(HandlerExceptionResolverComposite.java:78) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.DispatcherServlet.processHandlerException(DispatcherServlet.java:1255) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1062) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1008) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:978) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:870) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:855) [spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:728) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.ApplicationDispatcher.doDispatch(ApplicationDispatcher.java:649) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.ApplicationDispatcher.dispatch(ApplicationDispatcher.java:611) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.AsyncContextImpl$AsyncRunnable.run(AsyncContextImpl.java:565) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.AsyncContextImpl.doInternalDispatch(AsyncContextImpl.java:351) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:196) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.CoyoteAdapter.asyncDispatch(CoyoteAdapter.java:235) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.AbstractProcessor.dispatch(AbstractProcessor.java:225) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:53) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1459) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1167) [na:na]
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:641) [na:na]
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61) [tomcat-embed-core-8.5.23.jar:8.5.23]
	at java.base/java.lang.Thread.run(Thread.java:844) [na:na]

2018-02-01 13:53:01.377 ERROR 13844 --- [nio-8080-exec-6] o.a.c.c.C.[.[.[/].[dispatcherServlet]    : Servlet.service() for servlet [dispatcherServlet] threw exception

java.io.IOException: Une connexion Ã©tablie a Ã©tÃ© abandonnÃ©e par un logiciel de votre ordinateur hÃ´te
	at java.base/sun.nio.ch.SocketDispatcher.write0(Native Method) ~[na:na]
	at java.base/sun.nio.ch.SocketDispatcher.write(SocketDispatcher.java:51) ~[na:na]
	at java.base/sun.nio.ch.IOUtil.writeFromNativeBuffer(IOUtil.java:93) ~[na:na]
	at java.base/sun.nio.ch.IOUtil.write(IOUtil.java:65) ~[na:na]
	at java.base/sun.nio.ch.SocketChannelImpl.write(SocketChannelImpl.java:473) ~[na:na]
	at org.apache.tomcat.util.net.NioChannel.write(NioChannel.java:134) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioBlockingSelector.write(NioBlockingSelector.java:101) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioSelectorPool.write(NioSelectorPool.java:157) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioEndpoint$NioSocketWrapper.doWrite(NioEndpoint.java:1267) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.doWrite(SocketWrapperBase.java:670) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.flushBlocking(SocketWrapperBase.java:607) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.flush(SocketWrapperBase.java:597) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11OutputBuffer.flushBuffer(Http11OutputBuffer.java:581) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11OutputBuffer.flush(Http11OutputBuffer.java:272) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11Processor.flush(Http11Processor.java:1560) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.AbstractProcessor.action(AbstractProcessor.java:283) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.Response.action(Response.java:173) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.OutputBuffer.doFlush(OutputBuffer.java:317) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.OutputBuffer.flush(OutputBuffer.java:284) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.CoyoteOutputStream.flush(CoyoteOutputStream.java:118) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at com.fasterxml.jackson.core.json.UTF8JsonGenerator.flush(UTF8JsonGenerator.java:1100) ~[jackson-core-2.9.2.jar:2.9.2]
	at com.fasterxml.jackson.databind.ObjectWriter.writeValue(ObjectWriter.java:915) ~[jackson-databind-2.9.2.jar:2.9.2]
	at org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter.writeInternal(AbstractJackson2HttpMessageConverter.java:286) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.http.converter.AbstractGenericHttpMessageConverter.writeInternal(AbstractGenericHttpMessageConverter.java:116) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.http.converter.AbstractHttpMessageConverter.write(AbstractHttpMessageConverter.java:230) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler$HttpMessageConvertingHandler.sendInternal(ResponseBodyEmitterReturnValueHandler.java:199) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler$HttpMessageConvertingHandler.send(ResponseBodyEmitterReturnValueHandler.java:189) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter.sendInternal(ResponseBodyEmitter.java:175) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter.send(ResponseBodyEmitter.java:169) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.SseEmitter.send(SseEmitter.java:125) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.SseEmitter.send(SseEmitter.java:108) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ReactiveTypeHandler$SseEmitterSubscriber.send(ReactiveTypeHandler.java:344) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ReactiveTypeHandler$AbstractEmitterSubscriber.run(ReactiveTypeHandler.java:283) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at java.base/java.lang.Thread.run(Thread.java:844) [na:na]

2018-02-01 13:53:01.378 ERROR 13844 --- [nio-8080-exec-6] o.a.c.c.C.[.[.[/].[dispatcherServlet]    : Servlet.service() for servlet [dispatcherServlet] in context with path [] threw exception

java.io.IOException: Une connexion Ã©tablie a Ã©tÃ© abandonnÃ©e par un logiciel de votre ordinateur hÃ´te
	at java.base/sun.nio.ch.SocketDispatcher.write0(Native Method) ~[na:na]
	at java.base/sun.nio.ch.SocketDispatcher.write(SocketDispatcher.java:51) ~[na:na]
	at java.base/sun.nio.ch.IOUtil.writeFromNativeBuffer(IOUtil.java:93) ~[na:na]
	at java.base/sun.nio.ch.IOUtil.write(IOUtil.java:65) ~[na:na]
	at java.base/sun.nio.ch.SocketChannelImpl.write(SocketChannelImpl.java:473) ~[na:na]
	at org.apache.tomcat.util.net.NioChannel.write(NioChannel.java:134) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioBlockingSelector.write(NioBlockingSelector.java:101) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioSelectorPool.write(NioSelectorPool.java:157) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.NioEndpoint$NioSocketWrapper.doWrite(NioEndpoint.java:1267) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.doWrite(SocketWrapperBase.java:670) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.flushBlocking(SocketWrapperBase.java:607) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.tomcat.util.net.SocketWrapperBase.flush(SocketWrapperBase.java:597) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11OutputBuffer.flushBuffer(Http11OutputBuffer.java:581) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11OutputBuffer.flush(Http11OutputBuffer.java:272) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.http11.Http11Processor.flush(Http11Processor.java:1560) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.AbstractProcessor.action(AbstractProcessor.java:283) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.coyote.Response.action(Response.java:173) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.OutputBuffer.doFlush(OutputBuffer.java:317) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.OutputBuffer.flush(OutputBuffer.java:284) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at org.apache.catalina.connector.CoyoteOutputStream.flush(CoyoteOutputStream.java:118) ~[tomcat-embed-core-8.5.23.jar:8.5.23]
	at com.fasterxml.jackson.core.json.UTF8JsonGenerator.flush(UTF8JsonGenerator.java:1100) ~[jackson-core-2.9.2.jar:2.9.2]
	at com.fasterxml.jackson.databind.ObjectWriter.writeValue(ObjectWriter.java:915) ~[jackson-databind-2.9.2.jar:2.9.2]
	at org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter.writeInternal(AbstractJackson2HttpMessageConverter.java:286) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.http.converter.AbstractGenericHttpMessageConverter.writeInternal(AbstractGenericHttpMessageConverter.java:116) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.http.converter.AbstractHttpMessageConverter.write(AbstractHttpMessageConverter.java:230) ~[spring-web-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler$HttpMessageConvertingHandler.sendInternal(ResponseBodyEmitterReturnValueHandler.java:199) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler$HttpMessageConvertingHandler.send(ResponseBodyEmitterReturnValueHandler.java:189) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter.sendInternal(ResponseBodyEmitter.java:175) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitter.send(ResponseBodyEmitter.java:169) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.SseEmitter.send(SseEmitter.java:125) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.SseEmitter.send(SseEmitter.java:108) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ReactiveTypeHandler$SseEmitterSubscriber.send(ReactiveTypeHandler.java:344) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at org.springframework.web.servlet.mvc.method.annotation.ReactiveTypeHandler$AbstractEmitterSubscriber.run(ReactiveTypeHandler.java:283) ~[spring-webmvc-5.0.2.RELEASE.jar:5.0.2.RELEASE]
	at java.base/java.lang.Thread.run(Thread.java:844) [na:na]
