const refCampoNome = document.getElementById("nome");
const refCampoEmail= document.getElementById("email");
const refCampoDataNasc= document.getElementById("data_nascimento");
const refCampoEscolaridade = document.getElementById("escolaridade");
const refCampoSexo = document.getElementsByName("sexo");
const refErros = document.getElementById('erros');

function limpar(){
  refCampoNome.value = "";
  refCampoEmail.value = "";
  refCampoDataNasc.value = "";
  refCampoEscolaridade.value = "";

  refCampoSexo.forEach(radio => {
    radio.checked = false;
  });
  refErros.innerHTML = "";
}

function validaFormulario(){
  refErros.innerHTML = "";
  let erros = [];
  
  if(refCampoNome.value == ""){
    erros.push("Informe o nome.");
  }
  
  if(refCampoEmail.value == ""){
    erros.push("Informe o email.");
    
  }
  
  if(refCampoDataNasc.value == ""){
    erros.push("Informe a data de nascimento.");
    
  }
  
  if(refCampoEscolaridade.value == ""){
    erros.push("Informe a escolaridade.");
  }
  
  let radioSelecionado = false;
  refCampoSexo.forEach(radio => {
    if(radio.checked == true){
      radioSelecionado = true;
    }
  })
  
  if(!radioSelecionado){
    erros.push("Informe o sexo.");
  }

  erros.forEach(erro => {
    refErros.innerHTML += `<p>${erro}</p>`
  })
}