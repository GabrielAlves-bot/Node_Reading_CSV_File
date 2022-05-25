-- AddForeignKey
ALTER TABLE `empresa` ADD CONSTRAINT `empresa_cidade_id_fkey` FOREIGN KEY (`cidade_id`) REFERENCES `cidade`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
