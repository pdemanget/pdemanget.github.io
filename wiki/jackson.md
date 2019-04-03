Jackson
=======

What it is
----------
A Json serializer that provide direcly typed object from json and the opposite.
It make it easy to provide json from any of your object with very little customization, mostly addding some annotations.


Abstract
--------

All the "magic" is contained in ObjectMapper class, mostly theses 2 methods to convert from/to JSON

     OjectMapper objectMapper = new ObjectMapper();
     object = objectMapper.readValue(json,YourClass.class)
     String json = objectMapper.writeValueAsString(object)

That's the equivalent of JS JSON.parse and JSON.stringify, with many more options, like Yaml, messagePack, custom serializers and deserializers.

Basic usage
-----------
### add dependency in pom.xml
                <dependency>
                        <groupId>com.fasterxml.jackson.core</groupId>
                        <artifactId>jackson-core</artifactId>
                        <version>2.9.6</version>
                </dependency>
                <dependency>
                        <groupId>com.fasterxml.jackson.core</groupId>
                        <artifactId>jackson-databind</artifactId>
                        <version>2.9.6</version>
                </dependency>
                <dependency>
                        <groupId>com.fasterxml.jackson.core</groupId>
                        <artifactId>jackson-annotations</artifactId>
                        <version>2.9.6</version>
                </dependency>

                <dependency>
                        <groupId>com.fasterxml.jackson.datatype</groupId>
                        <artifactId>jackson-datatype-jsr310</artifactId>
                        <version>2.9.6</version>
                </dependency>

### annotate your DTO class if needed

    class YourValue{
    	String name;
    	@JsonProperty("first_name")
    	String firstName
    	@JsonIgnore
    	String password;
    	
    	// ... getters/settters
    }
                
### use ObjectMapper

    OjectMapper mapper = new ObjectMapper();
    // you can read from file, resource or string
    values = mapper.readValue(getClass().getResourceAsStream("yourfile.json"),YourValue.class);
    // write to any stream you want
    mapper.writeValue(new File("yourfileresult.json"),value);

Advanced usage
==============
Configure ObjectMapper
----------------------
My custom ObjectMapper options

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT);  // pretty print output
		mapper.setSerializationInclusion(Include.NON_NULL); // remove null attributes
		mapper.setSerializationInclusion(Include.NON_EMPTY);// remove empty arrays




Deserialize a list
------------------

		values = mapper.readValue(getClass().getResourceAsStream(ANY_JSON),new TypeReference<List<YourValue>>() {});



Custom serializer
------------------
        
        @JsonDeserialize(using = HexListDeserializer.class)
        private List<Integer> values;


		/**
		 * Custom deserializer for hexadecimal lists. 
		 */
		public class HexListDeserializer extends StdDeserializer<List<Integer>> {
		
			public HexListDeserializer() {
				this(null);
			}
		
			public HexListDeserializer(Class<?> vc) {
				super(vc);
			}
		
			@Override
			public List<Integer> deserialize(JsonParser jp, DeserializationContext ctxt)
			        throws IOException, JsonProcessingException {
				JsonNode node = jp.getCodec().readTree(jp);
				List<Integer> res = new ArrayList<>();
				Iterable<JsonNode> children = () -> node.elements();
				for (JsonNode child : children) {
					String hex = child.asText();
					if (!hex.startsWith("0x")) {
						throw new JsonParseException(jp, "Hexadecimal value should start with 0x : " + hex);
					}
					int value = Integer.parseInt(hex, 2, hex.length(), 16);
					res.add(value);
				}
		
				return res;
			}
		}