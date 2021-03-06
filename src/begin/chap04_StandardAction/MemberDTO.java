package begin.chap04_StandardAction;

import java.util.Calendar;

public class MemberDTO {
	private String name;	//성명
	private String jubun;	//주번
	
	public MemberDTO() {}	//기본생성자가 있어야 bean을 만들 수 있음.	
	
	public MemberDTO(String name, String jubun) {
		this.name = name;
		this.jubun = jubun;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJubun() {
		return jubun;
	}

	public void setJubun(String jubun) {
		this.jubun = jubun;
	}
	
	// 성별 //////////////////////////////////////////////////////////////////////////////
	
	public String getGender() {
		
		String gender = "";
		
		String n = jubun.substring(6,7);
		
		if("1".equals(n) || "3".equals(n)) {// ||또는
			gender = "남자";
		}else {
			gender = "여자";
		}
		return gender;
	}
	
	
	// 나이 ////////////////////////////////////////////////////////////////////////////////
	
	public int getAge() {
		
		int age =0;
		Calendar currentDate = Calendar.getInstance(); // 현재날짜와 시간을 얻어온다.
		
		int currentYear = currentDate.get(Calendar.YEAR);
		
		String n = jubun.substring(6,7);
		String jubunYear = jubun.substring(0,2);
		
		System.out.println("jubunYear : " +jubunYear);
		
		if("1".equals(n)|| "2".equals(n)) {
			age=currentYear-Integer.parseInt("19"+jubunYear)+1;
		}else {
			age=currentYear-Integer.parseInt("20"+jubunYear)+1;
		}

		System.out.println("Integer.parseInt(\"19\"+jubunYear) : " +Integer.parseInt("19"+jubunYear));

		
		return age;
	}
	
}
