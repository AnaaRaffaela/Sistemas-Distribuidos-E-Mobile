function somarValores(){
  const firstNumber = Number(document.getElementById("first_number").value);
  const secondNumber = Number(document.getElementById("second_number").value);
  const soma = firstNumber + secondNumber;
  
  console.log(soma)
  document.getElementById("resultado").innerHTML = soma;

}