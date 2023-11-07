DROP DATABASE IF EXISTS your_life_db;


CREATE DATABASE your_life_db;
USE your_life_db;

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    sobre_nome VARCHAR(50),
    foto_url VARCHAR(255)
);

CREATE TABLE contato (
    id INT PRIMARY KEY,
    linkedin VARCHAR(100),
    github VARCHAR(100),
    email VARCHAR(100),
    FOREIGN KEY (id) REFERENCES usuario(id)
);

CREATE TABLE informacao (
    id INT PRIMARY KEY,
    descricao TEXT(500),
    stacks JSON,
    FOREIGN KEY (id) REFERENCES usuario(id)
);


CREATE TABLE dica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT(500),
    ref_url VARCHAR(50),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

DELIMITER $$
CREATE TRIGGER trigger_atualiza_email
BEFORE INSERT ON contato
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL THEN
        SET NEW.email='add um email';
    END IF;
END;
$$

INSERT INTO usuario(nome, sobre_nome, foto_url) 
VALUES ('Cleverson','Guandalin','../img/cleverson.jpg'),
       ('Fernando','Bettiol Lopes','../img/fernando.jpg'),
       ('Pietro','Canuto Bucker Franchini','../img/pietro.jpg'),
       ('Tiago','Lima Reis','../img/tiago.jpg'),
       ('Vanderlei','Princival','../img/vanderlei.jpg'),
       ('Vanderlei','Princival','../img/vanderlei.jpg');
       

INSERT INTO contato(id, linkedin, github, email) 
VALUES (
        1, 
        'https://www.linkedin.com/in/cleversonguandalin/',
        'https://github.com/CleverGnd',
        'cleversongnd@gmail.com'
       ),
       (
        2, 
        'https://www.linkedin.com/in/fernandobettiollopes/',
        'https://www.github.com/pessoa1',
        'fernandobettiollopes@hotmail.com'
       ),
       (
        3, 
        "https://www.linkedin.com/in/pietro-bucker-dev",
        "https://github.com/PietroBucker",
        "pietro_177@hotmail.com"
       ),
       (
        4, 
        "https://www.linkedin.com/in/tiago-lima-reis-56831938",
        "https://www.github.com/pessoa1",
        "tiagobond008@yahoo.com.br"
       ),
       (
        5, 
        "https://www.linkedin.com/in/vanderlei-princival",
        "https://www.github.com/pessoa1",
        "vanderlei.princival@gmail.com"
       ),
       (
        6, 
        "https://www.linkedin.com/in/vanderlei-princival",
        "https://www.github.com/pessoa1",
        NULL
       );
       

INSERT INTO informacao(id, descricao, stacks) 
VALUES (
        1, 
        'Sou Cleverson, um engenheiro mecânico que se apaixonou pelo desenvolvimento de software. Tenho conhecimentos em JavaScript, Python, SQL e AWS, e estou sempre me atualizando em novas tecnologias. Estudo Back-end e tenho uma especialização em Engenharia de Dados. Meu objetivo é ser um Desenvolvedor Back-end que cria soluções escaláveis e eficientes para os negócios. Adoro desafios e projetos que usam a tecnologia para melhorar o mundo.',
        '["JavaScript", "HTML", "CSS"]'
    ),
    (
        2, 
        'Sou Fernando, um profissional de tecnologia com mais de 20 anos de experiência na área de tecnologia, como professor,assistência técnica e infraestrutura. Atualmente, estou me preparando para o próximo desafio: o desenvolvimento para a migração para a nuvem. Tenho duas pós-graduações e uma certificação Microsoft (MS-900) que comprovam minha capacidade e atualização constante.',
        '["Servidor", "Microsoft", "AWS"]'
    ),
    (
        3, 
        'Sou Pietro, minha paixão pelos jogos eletrônicos me levou a cursar Sistemas de Informações. Me especializei em hardware, mas nunca deixei de lado minha paixão pelos jogos. Agora, com mais experiência e foco estou me capacitando na Trybe para aprender também sobre Inteligência Artificial. Adoro RPGs, que estimulam a criatividade e a solução de problemas. Quero compartilhar com vocês essa aventura de criar jogos incríveis e úteis para o cotidiano.',
        '["JavaScript", "HTML", "CSS"]'
    ),
    (
        4, 'Sou Tiago, um estudante de front-end com interesse em AWS. Estou fazendo um curso pela ProzEducacao, onde aprendo sobre HTML, CSS, JavaScript e React. Quero me tornar um desenvolvedor front-end que cria interfaces atraentes e funcionais para os usuários. Gosto de aprender novas tecnologias e me desafiar com projetos criativos e inovadores.',
        '["JavaScript", "HTML", "CSS"]'
    ),
    (
        5, 'Sou Vanderlei, um estudante de front-end com ênfase em AWS pela ProzEducacao Tenho experiência como analista de TI, atuando em suporte, manutenção, administração e segurança de sistemas, redes e infraestrutura. Sou um profissional com habilidades de resolução de problemas, soluções tecnológicas, suporte ao usuário e trabalho em equipe. Busco sempre me atualizar e aprimorar meus conhecimentos para enfrentar os desafios da área de TI.',
        '["JavaScript", "Redes", "Windows", "Linux"]'
    ),
     (
        6, 'Sou Vanderlei, um estudante de front-end com ênfase em AWS pela ProzEducacao Tenho experiência como analista de TI, atuando em suporte, manutenção, administração e segurança de sistemas, redes e infraestrutura. Sou um profissional com habilidades de resolução de problemas, soluções tecnológicas, suporte ao usuário e trabalho em equipe. Busco sempre me atualizar e aprimorar meus conhecimentos para enfrentar os desafios da área de TI.',
        '["JavaScript", "Redes", "Windows", "Linux"]'
    );
    
