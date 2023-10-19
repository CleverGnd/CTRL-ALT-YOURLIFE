function clearFields(formFields) {
  for (var i = 0; i < formFields.length; i++) {
    const field = document.getElementById(formFields[i]);
    field.value = '';
  }
}

document.getElementById('form-register').addEventListener('submit', function(event) {
  event.preventDefault();

  const formFields = ['name', 'foto', 'link1', 'link2', 'link3', 'stacks', 'descricao'];

  for (var i = 0; i < formFields.length; i++) {
    const field = document.getElementById(formFields[i]);
    if (field.value === '') {
      alert('Por favor, preencha o campo corretamente!');
      field.focus();
      return;
    } 
  }

  alert('Formulário salvo com sucesso!');
  clearFields(formFields);
});