
Spring tips
===========


Configuration
--------------
Change file name: --spring.config.name=myproject

JPA
---
spring.jpa.properties.hibernate.dialect=...
spring.jpa.properties.hibernate.default_schema=...



Spring Flux
===========

Spring boot dependency
----------------------

    	<dependency>
    		<groupId>org.springframework.boot</groupId>
    		<artifactId>spring-boot-starter-webflux</artifactId>
    	</dependency>

basic example
------------

    @RestController
    @RequestMapping("/event/stream")
    public class EventStreamController {
     
     GetMapping(produces = MediaType.APPLICATION_STREAM_JSON_VALUE)
     public Flux<Line> stockTransactionEvents(){
             Flux<Long> interval = Flux.interval(Duration.ofSeconds(1));
             Flux<Line> stockTransactionFlux = Flux.fromStream(Stream.generate(() -> new Line()));
             return Flux.zip(interval, stockTransactionFlux).map(Tuple2::getT2);
     }
     
     }


working example
---------------
    
    @RestController
    @RequestMapping("/event/stream")
    public class EventStreamController {
	
	private List<FluxSink<Event>> fluxSinks = new ArrayList<>();
	
	@Scheduled(fixedRate = 10_000)
	public void sendAlarm() {
		Event event = new Event();

		send(event);
	}

	private void send(Event event) {
		fluxSinks.forEach(fluxSink -> {
			fluxSink.next(event);
		});
	}

	/**
	 * Flux d'évènements en SSE.
	 * Les clients se connectent en HTTP à l'url /evet/stream et le flux reste ouvert.
	 * Pour chaque client connecté on ajoute un fluxSink.
	 * @return
	 */
	@GetMapping( produces = MediaType.TEXT_EVENT_STREAM_VALUE)
	public Flux<Event> stockTransactionEvents(HttpServletRequest request) {
	
		return Flux.create(fluxSink -> {
			fluxSinks.add(fluxSink);
		});
	}


    }