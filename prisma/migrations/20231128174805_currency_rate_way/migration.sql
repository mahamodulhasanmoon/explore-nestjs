-- AlterTable
ALTER TABLE `currency_rates` ADD COLUMN `flightType` ENUM('ONE_WAY', 'ROUND_TRIP', 'MULTI_CITY') NULL;
