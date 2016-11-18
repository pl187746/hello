package hello;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class HelloTest {

	@Test
	public void test() {
		assertTrue(true);
	}

	@Test
	public void hello() {
		System.out.println("Hello Test World!!!");
	}
}
