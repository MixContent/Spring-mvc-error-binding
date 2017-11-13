package com.singh;

import org.springframework.beans.propertyeditors.PropertiesEditor;

public class StudentNameeditor extends PropertiesEditor {

	public void setAsText(String studentname) throws IllegalArgumentException
	{
		if(studentname.contains("mr")||studentname.contains("miss"))
		{
			setValue(studentname);
			
		}
		else{
			studentname="mr/ms  "+studentname;
			setValue(studentname);
		}
		
	}
	
	
}
