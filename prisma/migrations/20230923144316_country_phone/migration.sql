/*
  Warnings:

  - You are about to alter the column `country` on the `companies` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(3))`.
  - A unique constraint covering the columns `[country,phone]` on the table `companies` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `companies_phone_key` ON `companies`;

-- AlterTable
ALTER TABLE `companies` MODIFY `country` ENUM('AE', 'BD', 'IN', 'SA', 'OM', 'QA', 'MY', 'MV') NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `companies_country_phone_key` ON `companies`(`country`, `phone`);
