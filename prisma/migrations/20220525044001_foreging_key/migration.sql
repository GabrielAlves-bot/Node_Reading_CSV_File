/*
  Warnings:

  - You are about to drop the column `uf_id` on the `cidade` table. All the data in the column will be lost.
  - Added the required column `uf_Id` to the `cidade` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `cidade` DROP COLUMN `uf_id`,
    ADD COLUMN `uf_Id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `cidade` ADD CONSTRAINT `cidade_uf_Id_fkey` FOREIGN KEY (`uf_Id`) REFERENCES `uf`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
