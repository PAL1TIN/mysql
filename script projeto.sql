-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LocaFacil
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LocaFacil
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LocaFacil` DEFAULT CHARACTER SET utf8 ;
USE `LocaFacil` ;

-- -----------------------------------------------------
-- Table `LocaFacil`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LocaFacil`.`Clientes` (
  `id` INT NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LocaFacil`.`funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LocaFacil`.`funcionarios` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `salario` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LocaFacil`.`Veiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LocaFacil`.`Veiculos` (
  `id` INT NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `valor_diaria` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LocaFacil`.`locaçoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LocaFacil`.`locaçoes` (
  `id` INT NOT NULL,
  `Clientes_id` INT NOT NULL,
  `Veiculos_id` INT NOT NULL,
  `funcionarios_id` INT NOT NULL,
  `data_inicio` VARCHAR(45) NULL,
  `data_fim` VARCHAR(45) NULL,
  `valor_total` FLOAT NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`id`, `Clientes_id`, `Veiculos_id`, `funcionarios_id`),
  INDEX `fk_locaçoes_Veiculos1_idx` (`Veiculos_id` ASC) ,
  INDEX `fk_locaçoes_Clientes1_idx` (`Clientes_id` ASC) ,
  INDEX `fk_locaçoes_funcionarios1_idx` (`funcionarios_id` ASC) ,
  CONSTRAINT `fk_locaçoes_Veiculos1`
    FOREIGN KEY (`Veiculos_id`)
    REFERENCES `LocaFacil`.`Veiculos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_locaçoes_Clientes1`
    FOREIGN KEY (`Clientes_id`)
    REFERENCES `LocaFacil`.`Clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_locaçoes_funcionarios1`
    FOREIGN KEY (`funcionarios_id`)
    REFERENCES `LocaFacil`.`funcionarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LocaFacil`.`Pagamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LocaFacil`.`Pagamentos` (
  `id` INT NOT NULL,
  `locaçoes_id` INT NOT NULL,
  `data_pagamentos` VARCHAR(45) NOT NULL,
  `valor` FLOAT NOT NULL,
  `metodo_pagamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `locaçoes_id`),
  INDEX `fk_Pagamentos_locaçoes1_idx` (`locaçoes_id` ASC) ,
  CONSTRAINT `fk_Pagamentos_locaçoes1`
    FOREIGN KEY (`locaçoes_id`)
    REFERENCES `LocaFacil`.`locaçoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
