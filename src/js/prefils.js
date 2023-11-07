


const request = async () => {
    const response = await fetch('http://0.0.0.0:3001/getAPI');
    const data = await response.json();
    return data;
};
let PERFILS_DB;

window.onload = async () => {
    PERFILS_DB = await request();
    console.log(PERFILS_DB);




    const perfis_container = document.getElementById('perfis_container');
    
    perfis_container.innerHTML = PERFILS_DB.map((element) => {
        return `
            <article class="perfil">
                <div class="informacoes">
            <div class="perfil-foto">
                <img src=${element.foto_url} alt="Foto de ${`${element.nome} ${element.sobre_nome}`}" />
            </div>
            <div class="contatos-content">
                <h3 class="nome-pessoa">${element.nome}</h3>
                <div class="contatos">
                    <a href=${element.linkedin} target="_blank">
                        <img src="../img/icons/linkedin.svg" alt="Logo do LinkedIn" class="social-icon" />
                    </a>
                    <a href=${element.github} target="_blank">
                        <img src="../img/icons/github.svg" alt="Logo do GitHub" class="social-icon" />
                    </a>
                    <a href="mailto:${element.email}" target="_blank">
                        <img src="../img/icons/envelope.svg" alt="Envelope email" class="social-icon" />
                    </a>
                </div>
            </div>
        </div>
        <p class="descricao">
            ${element.descricao}
        </p>
        <div class="stacks">
        ${element.stacks.map((element) => `<p>${element}</p>`).join(' ')}
        </div>
    </article>
    `;
    }).join(' ');

};

