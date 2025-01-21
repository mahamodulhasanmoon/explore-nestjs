/*
  Warnings:

  - You are about to drop the column `agentBalance` on the `journals` table. All the data in the column will be lost.
  - Added the required column `agencyBalance` to the `journals` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `journals` DROP COLUMN `agentBalance`,
    ADD COLUMN `agencyBalance` DECIMAL(65, 30) NOT NULL;
