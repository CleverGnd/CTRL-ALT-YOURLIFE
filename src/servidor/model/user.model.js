import connection from "./connection.js";

export const findAll = async () => {
    const [teste] = await connection.execute(
        `SELECT u.nome, u.sobre_nome, u.foto_url, c.linkedin, c.github, c.email, i.descricao, i.stacks  
         FROM usuario u
         INNER join contato c on u.id = c.id
         INNER join informacao i on i.id = u.id;`,
    );
    // console.log(teste);
    return teste;
}

export const insert = async (nome) => {
    const [teste] = await connection.execute(
        'INSERT INTO teste (nome) VALUES (?)',
        [nome]
    );
    console.log(teste);
    return teste;
}

