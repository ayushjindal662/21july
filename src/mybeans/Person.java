package mybeans;

// this class is based on BEAN guidelines
public class Person 
{
	// private data members
	private String name, address;
	private float age;

	// getters and setters
	public String getName() {
		return name;
	}

	public void setName(String name) {
		System.out.println("setter for name");
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		System.out.println("setter for address");
		this.address = address;
	}

	public float getAge() {
		return age;
	}

	public void setAge(float age) {
		System.out.println("setter for age");
		this.age = age;
	}

	// no arg cnst
	public Person() {
		System.out.println("object of bean created");
	}
}