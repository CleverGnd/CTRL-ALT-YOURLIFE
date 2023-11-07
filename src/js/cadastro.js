

function clearFields(formFields) {
  for (var i = 0; i < formFields.length; i++) {
    const field = document.getElementById(formFields[i]);
    field.value = '';
  }
}


document.getElementById('form-register').addEventListener('submit', function(event) {
  event.preventDefault();

  const formFields = ['nome', 'foto', 'linkedin', 'github', 'email', 'stacks', 'descricao'];


  const obj = {}
  for (var i = 0; i < formFields.length; i++) {
    const field = document.getElementById(formFields[i]);
    if (field.value === '') {
      alert('Por favor, preencha o campo corretamente!');
      field.focus();
      return;
    } 
    obj[formFields[i]] = field.value; 
  }
  console.log(PERFILS_DB);
  // salvarDados(obj);
  alert('Formulário salvo com sucesso!');
  clearFields(formFields);
  
});
