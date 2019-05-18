$(document).ready(function(readyEvent) {
	$("#loadingPrestacion").hide();
	$('[data-toggle="tooltip"]').tooltip();   
	
	$("#errorFile").hide();
	$("#documentsNotExists").hide();
	
	$(document).on('click', function () {
		$("#errorFile").hide();
	});
	
	$("#acceptModalPrestador").on('click', function() {
		$("#autorizacionForm").submit();
	});
	
	$("#cancelPrestador").on('click', function() {
		$("#autorizacionForm").find("input[type=text]:visible").filter(function() { if($(this).val()=="") return $(this); })[0].focus();
	});
	
	$("#idBeneficiario").change(function () {
	    $("#nombreBeneficiario").val($(this).find('option:selected').text());
	})
	
	$("#acceptPrestador").on('click', function() {
		var wrongFileUpload = false;
		var totalSize = 0;
		Object.keys(uploadFiles).forEach(function(key) {
			if(uploadFiles[key].size > 3145728) {
				wrongFileUpload = true;
			}
		totalSize += uploadFiles[key].size;
		});
		
		if(totalSize > 26214400) {
			wrongFileUpload = true;
		}
		
		if(wrongFileUpload) {
			$("#errorFile").show();
			return false;
		}

	   //in case if all Available Text boxes within the form are mandatory
	    var checkEmptyInput = $("#autorizacionForm").find("input[type=text]:visible").filter(function() { if($(this).val()=="") return $(this); }).length;
	    if(checkEmptyInput>0) {
	    	$('#myModal').modal('show');
	        return false;
	    }
		
	    $("#autorizacionForm").submit();
	});
	
	$("#nextBtn").on('click', function () {
		getDocumentos();
	});
});

function getDocumentos(){
	$("#loadingDocuments").show();
	$("#documentsNotExists").hide();
	$("#documents").hide();
	
	if($('#idEspecialidad').val() != null && $('#idEspecialidad').val() != '' && $('#idPrestacion').val() != null && $('#idPrestacion').val() != '') {
		var documentOptions = {
				"idEspecialidad": $('#idEspecialidad').val(),
				"idPrestacion": $('#idPrestacion').val()
		};
		
		$.ajax({
			type: "POST",
			contentType : 'application/json; charset=utf-8',
			url: "getDocumentos",
			data: JSON.stringify(documentOptions),
		    async : true,
			dataType: 'json',
			timeout: 100000,
			success: function(data) {
				if(data != null && data.length > 0){
					for(var i = 0 ; i < data.length ; i++){
						$("#documents").append("<li>"+data[i]+"</li>");
					}
					$("#documents").show();
					$("#loadingDocuments").hide();
					$("#documentsNotExists").hide();
				}else{
					$("#documents").hide();
					$("#documentsNotExists").show();
					$("#loadingDocuments").hide();
				}
			}
		});
	}
}

function getPrestaciones(){
	$("#divIdPrestacion").hide();
	$("#loadingPrestacion").show();
	if($('#idEspecialidad').val() != null && $('#idEspecialidad').val() != ''){
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "getPrestaciones",
			data : $('#idEspecialidad').val(),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				if(data != null && data.length > 0){
					$("#idPrestacion").css('display', 'block');
					$("#divIdPrestacion").css('display', 'block');
					$("#idPrestacion").attr('required', true);
					$("#idPrestacion option[value!='']").remove();
					for(var i = 0 ; i < data.length ; i++){
						$("#idPrestacion").html($("#idPrestacion").html() + "<option value='" + data[i].idPrestacion + "'>" + data[i].etiqueta + "</option>");
					}
				}else{
					$("#idPrestacion").css('display', 'none');
					$("#divIdPrestacion").css('display', 'none');
					$("#idPrestacion").attr('required', false);
				}
				
				$("#loadingPrestacion").hide();
			},
			error : function(e) {
				console.log("ERROR: ", e);
				$("#loadingPrestacion").hide();
			}
		});
	} else {
		$("#divIdPrestacion").css('display', 'none');
		$("#prestacion").css('display', 'none');
		$("#prestacion").attr('required', false);
		$("#loadingPrestacion").hide();
	}
}