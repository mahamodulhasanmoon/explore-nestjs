-- AlterTable
ALTER TABLE `reservations` ADD COLUMN `basePrice` DECIMAL(65, 30) NULL,
    ADD COLUMN `discount` DECIMAL(65, 30) NULL,
    ADD COLUMN `discountedAmount` DECIMAL(65, 30) NULL,
    ADD COLUMN `price` DECIMAL(65, 30) NULL,
    ADD COLUMN `totalPrice` DECIMAL(65, 30) NULL;
