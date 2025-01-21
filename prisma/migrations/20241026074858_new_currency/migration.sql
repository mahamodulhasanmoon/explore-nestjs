-- AlterTable
ALTER TABLE `currency_rates` MODIFY `from` ENUM('BDT', 'AED', 'INR', 'SAR', 'QAR') NOT NULL,
    MODIFY `to` ENUM('BDT', 'AED', 'INR', 'SAR', 'QAR') NOT NULL;
