package com.osdepym.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.osdepym.dto.PlanItemDTO;
import com.osdepym.dto.PlanSectionDTO;

@Controller
public class PlanController {
	/*@Autowired
	@Qualifier("PlanService")
	private PlanService service; */
	
	@RequestMapping(value = "/plan/{idPlan}", method = RequestMethod.GET)
	public ModelAndView loadPlanConditions(@PathVariable(value = "idPlan") String idPlan) {
		ModelAndView view = null;
		try {
			List<PlanSectionDTO> planSectionList = /*service.*/getPlanSections(idPlan);
			view = new ModelAndView("plan");
			view.addObject("planSectionList", planSectionList);
		} catch(Exception e) {
			view = new ModelAndView("error");
			view.addObject("error", e);
		}
		return view;
	}
	
	private List<PlanSectionDTO> getPlanSections(String idPlan) {
		List<PlanSectionDTO> planSectionList = new ArrayList<PlanSectionDTO>();
		
		List<PlanItemDTO> itemsList = new ArrayList<PlanItemDTO>();
		List<PlanItemDTO> subitemsList = new ArrayList<PlanItemDTO>();
				
		PlanItemDTO piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta en consultorio Equipo Base de Atenci�n Primaria");
		piDTO.setValue("S/C");
		itemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta ambulatoria especializada");
		piDTO.setValue("S/C");
		itemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta Diurna (C�digo Verde)");
		piDTO.setValue("$ 310");
		subitemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta Nocturna (C�digo Verde)");
		piDTO.setValue("$ 434");
		subitemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Atenci�n domiciliaria");
		piDTO.setValue(null);
		piDTO.setSubitemsList(subitemsList);
		itemsList.add(piDTO);
		
		PlanSectionDTO psDTO = new PlanSectionDTO();
		psDTO.setTitle("Beneficios adicionales");
		psDTO.setSubtitle(null);
		psDTO.setItemsList(itemsList);
		planSectionList.add(psDTO);
		itemsList.clear();
		subitemsList.clear();
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta en consultorio Equipo Base de Atenci�n Primaria");
		piDTO.setValue("S/C");
		itemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta ambulatoria especializada");
		piDTO.setValue("S/C");
		itemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta Diurna (C�digo Verde)");
		piDTO.setValue("$ 310");
		subitemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Consulta a la noche (C�digo Verde)");
		piDTO.setValue("$ 434");
		subitemsList.add(piDTO);
		
		piDTO = new PlanItemDTO();
		piDTO.setTitle("Atenci�n domiciliaria");
		piDTO.setValue(null);
		piDTO.setSubitemsList(subitemsList);
		itemsList.add(piDTO);
		
		psDTO = new PlanSectionDTO();
		psDTO.setTitle("Beneficios adicionales");
		psDTO.setSubtitle("Subtitulo de Plan Sections");
		psDTO.setItemsList(itemsList);
		planSectionList.add(psDTO);
		
		return planSectionList;
	}
}
