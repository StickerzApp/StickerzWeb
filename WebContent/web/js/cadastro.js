var erros = ['O email digitado é inválido','A senha deve conter no mínimo 6 caracteres e no máximo 8','A confirmação de senha deve igual à senha digitada'];

//verifica se o email digitado é válido
function validaEmail(){
	var email = $("input#emailCadastro").val();
	
	var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if(!filtro.test(email)){
    	setMensagemErrro(0)
    	$('div#validacao').show();
    	$('i#erroEmail').show();
    	$('button#submit').attr('disabled','disabled');
	}else{
		$('div#validacao').hide();
		$('i#erroEmail').hide();
		$('button#submit').removeAttr('disabled');
	}
}

//verifica se a senha digitada é valida
function validaSenhaCadastro(){
	var senhaCadastro = $("input#senhaCadastro").val();
	
	if(senhaCadastro.length < 6){
		setMensagemErrro(1)
		$('div#validacao').show();
		$('i#erroSenha').show();
		$('button#submit').attr('disabled','disabled');
	}else{
		$('div#validacao').hide();
		$('i#erroSenha').hide();
		$('button#submit').removeAttr('disabled');
	}
		
}


//valida senha e confirmação
function validaConfirmacao(){
	var confirmacaoSenhaCadastro = $("input#confirmaSenhaCadastro").val();
	var senhaCadastro = $("input#senhaCadastro").val();
	
	if(confirmacaoSenhaCadastro != senhaCadastro){
		setMensagemErrro(2)
		$('div#validacao').show();
		$('i#erroConfirmaSenha').show();
		$('button#submit').attr('disabled','disabled');
	}else{
		$('div#validacao').hide();
		$('i#erroConfirmaSenha').hide();
		$('button#submit').removeAttr('disabled');
	}
	
}


function setMensagemErrro(codigoErro){
	$('div#validacao').html(erros[codigoErro]);
	$('div#validacao').show();
}
