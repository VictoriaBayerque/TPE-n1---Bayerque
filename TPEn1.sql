CREATE DATABASE Lolinwonderland_db;

CREATE TABLE `Lolinwonderland_db`.`Users` (
    `user_id` INT NULL AUTO_INCREMENT ,
    `user_name` VARCHAR(100) NOT NULL ,
    `user_lastname` VARCHAR(100) NOT NULL ,
    `user_email` VARCHAR(100) NOT NULL ,
    `user_username` VARCHAR(100) NOT NULL ,
    `user_password` VARCHAR(100) NOT NULL ,
    PRIMARY KEY (`user_id`))ENGINE = INNODB;

CREATE TABLE `Lolinwonderland_db`.`Books` (
    `book_id` INT NULL AUTO_INCREMENT ,
    `book_name` VARCHAR(100) NOT NULL ,
    `book_author` VARCHAR(100) NOT NULL ,
    `book_series` VARCHAR(100) NOT NULL ,
    `book_seriesnumber` INT NOT NULL ,
    `book_summary` VARCHAR(5000) NOT NULL ,
    `book_summaryauthor` VARCHAR(100) NOT NULL ,
    `book_summaryauthor_id` INT NULL ,
    PRIMARY KEY (`book_id`, `book_name`))ENGINE = INNODB;

INSERT INTO `Users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_username`, `user_password`) VALUES (NULL, 'Victoria', 'Bayerque', 'tori.bayerque@gmail.com', 'Malady', 'pocaimaginacion');
INSERT INTO `Users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_username`, `user_password`) VALUES (NULL, 'Limon', 'Acido', 'limoncito93@gmail.com', 'Limoncello', 'nomeexpriman');
INSERT INTO `Users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_username`, `user_password`) VALUES (NULL, 'Gato', 'Negro', 'limpiamicajita@gmail.com', 'KuroiNeko', 'maullaralas3esmipasion');
INSERT INTO `Books` (`book_id`, `book_name`, `book_author`, `book_series`, `book_seriesnumber`, `book_summary`, `book_summaryauthor`, `book_summaryauthor_id`) VALUES (NULL, 'A court of thorns and roses', 'Sarah J. Mass', 'ACOTAR', 1, 'This books is about blablabla', 'Malady', 1);
INSERT INTO `Books` (`book_id`, `book_name`, `book_author`, `book_series`, `book_seriesnumber`, `book_summary`, `book_summaryauthor`, `book_summaryauthor_id`) VALUES (NULL, 'A court of mist and fury', 'Sarah J. Mass', 'ACOTAR', 2, 'The adventure continues and they...', 'Limoncello', 2);
INSERT INTO `Books` (`book_id`, `book_name`, `book_author`, `book_series`, `book_seriesnumber`, `book_summary`, `book_summaryauthor`, `book_summaryauthor_id`) VALUES (NULL, 'A court of wings and ruin', 'Sarah J. Mass', 'ACOTAR', 3, 'The war is near and...', 'KuroiNeko', 3);
INSERT INTO `Books` (`book_id`, `book_name`, `book_author`, `book_series`, `book_seriesnumber`, `book_summary`, `book_summaryauthor`, `book_summaryauthor_id`) VALUES (NULL, 'From blood and ash', 'Jennifer L. Armentrout', 'From blood and ash', 1, 'Noblesse oblige and the protagonist...', 'Malady', 1);

ALTER TABLE `Books` ADD CONSTRAINT `fk_booksummaryauthorid` FOREIGN KEY (`book_summaryauthor_id`) REFERENCES `users`(`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
