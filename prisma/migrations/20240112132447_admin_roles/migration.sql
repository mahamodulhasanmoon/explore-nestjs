/*
  Warnings:

  - The values [general] on the enum `admins_role` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `admins` MODIFY `role` ENUM('admin', 'manager', 'accountant') NOT NULL;
