package com.cts.ppd.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.ppd.vo.Patient;
import com.cts.ppd.vo.Study;

@Controller
public class HelloWorldController {
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(
	            dateFormat, false));
	}
	@RequestMapping("/hello")
	public String hello(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name,
			Model model) {
		model.addAttribute("name", name);
		return "hello";
	}

	@RequestMapping(value = "/newpatient", method = RequestMethod.GET)
	public String showForm(Patient patient, Model model) {
		renderStudies(patient, model);
		
		return "newpatient";
	}

	@RequestMapping(value = "/demo", method = RequestMethod.GET)
	public String demoForm(Patient patient, Model model) {
		renderStudies(patient, model);
		
		return "demo";
	}
	@RequestMapping(value = "/createshipment", method = RequestMethod.GET)
	public String createshipment(Patient patient, Model model) {
		renderStudies(patient, model);
		
		return "createshipment";
	}
	@RequestMapping(value = "/ordersupplies", method = RequestMethod.GET)
	public String ordersupplies(Patient patient, Model model) {
		renderStudies(patient, model);
			
		return "ordersupplies";
	}
	
	
	@RequestMapping(value = "/patientreport", method = RequestMethod.GET)
	public String getPatientReport(Patient patient, Model model) {
		renderStudies(patient, model);
		
		return "patientreport";
	}
	

	@RequestMapping(value = "/newpatient", method = RequestMethod.POST)
	public String checkPersonInfo(@Valid Patient patient,
			BindingResult bindingResult, Model model) {
		System.out.println("bindingResult.hasErrors() :"+bindingResult.hasErrors());
		if (bindingResult.hasErrors()) {
			renderStudies(patient, model);
			System.out.println(bindingResult.getFieldErrorCount());
			return "newpatient";
		}
		return "redirect:/hello";
	}

	private void renderStudies(Patient patient, Model model) {
		ArrayList<Study> studies = new ArrayList<Study>(2);
		
		Study study1 = new Study();
		
		study1.setStudyId("Study-001");
		study1.setProtocolId("S001-P001");
		study1.setSponsorId("S001-O001");
		
		studies.add(study1);
		
		Study study2 = new Study();

		study2.setStudyId("Study-002");
		study2.setProtocolId("S002-P002");
		study2.setSponsorId("S002-O002");
		
		studies.add(study2);
		patient.setStudies(studies);
		patient.setPhone("1002003004");
		
		model.addAttribute("studiesList",studies);
	}
}
