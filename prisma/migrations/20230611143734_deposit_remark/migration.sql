-- AlterTable
ALTER TABLE `bank_deposits` ADD COLUMN `remark` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `bank_transfers` ADD COLUMN `remark` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `cash_deposits` ADD COLUMN `remark` VARCHAR(191) NULL;
