import java.util.HashMap;
import java.util.Map;


class Poubelle{
	private Map<String,String> mapOf(String... strings){
		Map<String,String> map = new HashMap<>();
		for(int i=0;i<strings.length;i+=2) {
			map.put(strings[0],strings[1]);
		}
		
		return map;
	}
}