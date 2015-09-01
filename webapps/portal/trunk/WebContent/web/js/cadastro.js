//verifica se o email digitado é válido
function validaEmail(){
	var email = $("input#emailCadastro").val();
	
	var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if(!filtro.test(email)){
    	$('div#dicaemail').show();
    	$('i#erroEmail').show();
	}else{
		$('div#dicaemail').hide();
		$('i#erroEmail').hide();
	}
}

//verifica se a senha digitada é valida
function validaSenhaCadastro(){
	var senhaCadastro = $("input#senhaCadastro").val();
	
	if(senhaCadastro.length < 6){
		$('div#dicasenha').show();
		$('i#erroSenha').show();
	}else{
		$('div#dicasenha').hide();
		$('i#erroSenha').hide();
	}
	validaConfirmacao();
		
}


//valida senha e confirmação
function validaConfirmacao(){
	var confirmacaoSenhaCadastro = $("input#confirmaSenhaCadastro").val();
	var senhaCadastro = $("input#senhaCadastro").val();
	
	if(confirmacaoSenhaCadastro != senhaCadastro){
		$('div#dicaconfirmacao').show();
		$('i#erroConfirmaSenha').show();
	}else{
		$('div#dicaconfirmacao').hide();
		$('i#erroConfirmaSenha').hide();
	}
	
}


$(document).ready(function () {

	$("#contact-form").submit(function (e) {
		var email = $("input#emailCadastro").val();
		var nome = $("input#nomeCadastro").val();
		var senhaCadastro = $("input#senhaCadastro").val();
		var confirmacaoSenhaCadastro = $("input#confirmaSenhaCadastro").val();
		
    	if($('div#dicaconfirmacao').is(':visible') ||
    			$('div#dicasenha').is(':visible')  ||
    			$('div#dicaemail').is(':visible') 
    			
    			){
    			alert('Corrija os campos');
    			e.preventDefault();
    	}else if(senhaCadastro == '' || confirmacaoSenhaCadastro == '' || email == ''){
			$('#modalerro').modal('show');
    		e.preventDefault();
    	}
    });
 });




