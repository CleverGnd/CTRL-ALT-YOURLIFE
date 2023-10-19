//-----------Capturando elemento no DOM-----------//

let pElements = document.querySelectorAll(".container p")
pTexts = []
pElements.forEach(function(pElement) {
    pTexts.push(pElement.textContent)
})

//----------Criando novo elemento na DOM----------//

let container = document.querySelector(".container");
let novoParagrafo = document.createElement("p");
novoParagrafo.textContent = "Obrigado pela visita em nosso site!!";

container.appendChild(novoParagrafo);

//----------Remover um elemento na DOM------------//

novoParagrafo = document.getElementById("novoParagrafo");
// elementoParaRemover.parentNode.removeChild(novoParagrafo);

//-----------Criando o evento onclick-------------//

function changeText() {
    id.innerHTML = "Sobre";
  }

















