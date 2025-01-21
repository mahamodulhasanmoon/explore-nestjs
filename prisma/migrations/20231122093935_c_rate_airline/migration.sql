/*
  Warnings:

  - A unique constraint covering the columns `[from,to,carrier]` on the table `currency_rates` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `currency_rates_from_to_key` ON `currency_rates`;

-- AlterTable
ALTER TABLE `currency_rates` ADD COLUMN `carrier` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `currency_rates_from_to_carrier_key` ON `currency_rates`(`from`, `to`, `carrier`);
