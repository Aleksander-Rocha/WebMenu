-- MySQL Script generated by MySQL Workbench
-- Sat Jan 30 14:44:53 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema webmenu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema webmenu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `webmenu` DEFAULT CHARACTER SET utf8 ;
USE `webmenu` ;

-- -----------------------------------------------------
-- Table `webmenu`.`estabelecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webmenu`.`estabelecimento` (
  `idestabelecimento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(12) NOT NULL,
  `descricao` VARCHAR(220) NOT NULL,
  `telefone` BIGINT(11) NOT NULL,
  `imagem` VARCHAR(45) NOT NULL,
  `logradouro` VARCHAR(100) NULL,
  `bairro` VARCHAR(40) NULL,
  `numero` INT NULL,
  `cidade` VARCHAR(30) NULL,
  `estado` CHAR(2) NULL,
  `long` BIGINT NULL,
  `lati` BIGINT NULL,
  `complemento` VARCHAR(45) NULL,
  PRIMARY KEY (`idestabelecimento`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webmenu`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webmenu`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `estabelecimento_idestabelecimento` INT NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`idcategoria`),
  INDEX `fk_categoria_estabelecimento1_idx` (`estabelecimento_idestabelecimento` ASC) ,
  CONSTRAINT `fk_categoria_estabelecimento1`
    FOREIGN KEY (`estabelecimento_idestabelecimento`)
    REFERENCES `webmenu`.`estabelecimento` (`idestabelecimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `webmenu`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `webmenu`.`item` (
  `iditem` INT NOT NULL AUTO_INCREMENT,
  `categoria_idcategoria` INT NOT NULL,
  `estabelecimento_idestabelecimento` INT NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `preco` DECIMAL(6,2) NOT NULL,
  `descricao` VARCHAR(130) NOT NULL,
  PRIMARY KEY (`iditem`),
  INDEX `fk_item_categoria_idx` (`categoria_idcategoria` ASC) ,
  INDEX `fk_item_estabelecimento1_idx` (`estabelecimento_idestabelecimento` ASC) ,
  CONSTRAINT `fk_item_categoria`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `webmenu`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_estabelecimento1`
    FOREIGN KEY (`estabelecimento_idestabelecimento`)
    REFERENCES `webmenu`.`estabelecimento` (`idestabelecimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
