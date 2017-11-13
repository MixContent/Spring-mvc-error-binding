package com.singh;

import java.beans.PropertyEditor;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields(new String[] { "studentmoile" });
		SimpleDateFormat dateformate = new SimpleDateFormat("yyyy-mm-dd");
		binder.registerCustomEditor(Date.class, "studentdob", new CustomDateEditor(dateformate, false));
		binder.registerCustomEditor(String.class, "studentname", (PropertyEditor) new StudentNameeditor());
	}

	@RequestMapping(value = "/submitadmissionform.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("student1") Student student1, @Valid BindingResult result) {
		ModelAndView model = null;

		if (result.hasErrors()) {
			model = new ModelAndView("index");
			model.addObject("dummyMessage", "Data coming from controller!!");
			return model;
		}

		model = new ModelAndView("AdmissionSuccessful");

		model.addObject("headerMessage", "Singh Instite of technology");

		return model;

	}

	@RequestMapping("/home")
	public String display(Model model) {
		model.addAttribute("msg", "All fields are mandatory to fill!!");
		return "index";
	}

}
