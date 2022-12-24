package apiTest;


import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate Test() {
		return Karate.run("deleteApi").tags("smoke").relativeTo(getClass());
	}
	

}
