package com.osdepym.validator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.osdepym.dto.CategoriaDTO;
import com.osdepym.form.ContactoForm;
import com.osdepym.service.ContactoService;


//http://docs.spring.io/spring/docs/current/spring-framework-reference/html/validation.html#validation-mvc-configuring
@Component
public class ContactoFormValidator implements Validator {
	
	@Autowired
	@Qualifier("ContactService")
	private ContactoService service;

	
	@Override
	public boolean supports(Class<?> clazz) {
		return true;
	}
	
	public Boolean verifyCategoryByIdMotivo(String idMotivo,Errors errors) {
		if(!StringUtils.isEmpty(idMotivo)) {
			try {
				List<CategoriaDTO> categ = service.getCategoriasByMotivoId(Integer.valueOf(idMotivo));
				if(categ != null && categ.size() > 0) {
					return true;
				}
			} catch (Exception e) {}
		}
		
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {

		ContactoForm user = (ContactoForm) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idMotivo", "notempty.contactoForm.idmotivo");
		if(verifyCategoryByIdMotivo(user.getIdMotivo(),errors))
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idCategoria", "size.contactoform.idcategoria");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombreAfiliado", "notempty.contactoform.nombreafiliado");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "idAfiliado", "size.contactoform.idafiliado");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "comentario","size.contactoform.comentario");
	}

}