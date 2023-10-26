USE FROTA_ACADEMICO

CREATE TABLE MOTORISTAS (
    motorista_id INT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    cnh_numero VARCHAR(20),
    cnh_categoria CHAR(2),
    telefone VARCHAR(15),
    endereco VARCHAR(255)
);


CREATE TABLE VEICULOS (
    veiculo_id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    placa VARCHAR(10),
    capacidade_passageiros INT,
    cor VARCHAR(20)
);


CREATE TABLE ROTAS (
    rota_id INT PRIMARY KEY,
    nome_rota VARCHAR(255),
    ponto_partida VARCHAR(255),
    ponto_destino VARCHAR(255),
    distancia_km DECIMAL(10, 2),
    tempo_estimado_min INT
);



CREATE TABLE CUSTOS (
    custo_id INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2),
    data_despesa DATE,
    veiculo_id INT,
    motorista_id INT, 
    FOREIGN KEY (veiculo_id) REFERENCES VEICULOS(veiculo_id),
    FOREIGN KEY (motorista_id) REFERENCES MOTORISTAS(motorista_id)
);


CREATE TABLE DOCUMENTACAO (
    documento_id INT PRIMARY KEY,
    tipo_documento VARCHAR(50),
    numero_documento VARCHAR(50),
    validade DATE,
    veiculo_id INT, 
    motorista_id INT, 
    FOREIGN KEY (veiculo_id) REFERENCES VEICULOS(veiculo_id),
    FOREIGN KEY (motorista_id) REFERENCES MOTORISTAS(motorista_id)
);