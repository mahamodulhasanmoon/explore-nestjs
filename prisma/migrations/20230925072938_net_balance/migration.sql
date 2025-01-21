/*
  Warnings:

  - Added the required column `adminBalance` to the `journals` table without a default value. This is not possible if the table is not empty.
  - Added the required column `agentBalance` to the `journals` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `journals` ADD COLUMN `adminBalance` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `agentBalance` DECIMAL(65, 30) NOT NULL;
