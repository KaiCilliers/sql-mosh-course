-- MySQL Workbench Synchronization
-- Generated: 2019-08-10 21:53
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: KAI_LAPTOP

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `school`.`course_tags` 
DROP FOREIGN KEY `fk_course_tags_courses`,
DROP FOREIGN KEY `fk_course_tags_tags`;

ALTER TABLE `school`.`enrollments` 
ADD COLUMN `coupon` VARCHAR(50) NULL DEFAULT NULL AFTER `price`;

ALTER TABLE `school`.`course_tags` 
ADD CONSTRAINT `fk_course_tags_courses`
  FOREIGN KEY (`course_id`)
  REFERENCES `school`.`courses` (`course_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_course_tags_tags`
  FOREIGN KEY (`tag_id`)
  REFERENCES `school`.`tags` (`tag_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
