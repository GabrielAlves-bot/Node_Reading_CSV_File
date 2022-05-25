-- CreateTable
CREATE TABLE `uf` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sigla` VARCHAR(2) NOT NULL,
    `nome_uf` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cidade` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uf_id` INTEGER NOT NULL,
    `nome` VARCHAR(255) NOT NULL,
    `populacao` INTEGER NOT NULL,
    `latitude` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(255) NOT NULL,
    `cod_ibge` VARCHAR(255) NOT NULL,
    `cod_siafi` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `empresa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cidade_id` INTEGER NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `nome_fantasia` VARCHAR(255) NOT NULL,
    `dt_inicio_atividade` DATETIME(3) NOT NULL,
    `cnae_fiscal` VARCHAR(255) NOT NULL,
    `cep` VARCHAR(255) NOT NULL,
    `porte` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
