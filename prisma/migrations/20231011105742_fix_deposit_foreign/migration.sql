/*
  Warnings:

  - A unique constraint covering the columns `[reference]` on the table `bank_deposits` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[reference]` on the table `bank_transfers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[reference]` on the table `cash_deposits` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `cash_deposits` DROP FOREIGN KEY `cash_deposits_counterId_fkey`;

-- CreateIndex
CREATE UNIQUE INDEX `bank_deposits_reference_key` ON `bank_deposits`(`reference`);

-- CreateIndex
CREATE UNIQUE INDEX `bank_transfers_reference_key` ON `bank_transfers`(`reference`);

-- CreateIndex
CREATE UNIQUE INDEX `cash_deposits_reference_key` ON `cash_deposits`(`reference`);

-- AddForeignKey
ALTER TABLE `cash_deposits` ADD CONSTRAINT `cash_deposits_counterId_fkey` FOREIGN KEY (`counterId`) REFERENCES `cash_counters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
