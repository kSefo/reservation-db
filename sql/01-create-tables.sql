DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF not exists `reservation` (
  `id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'ID',
  `reservation_datetime` DATETIME NOT NULL      COMMENT '予約日時',
  `reservation_name` VARCHAR(20) NOT NULL       COMMENT '予約者名',
  `request` TEXT NOT NULL                       COMMENT '要望・相談',
  `status`  VARCHAR(10) NOT NULL                COMMENT 'ステータス',
  `created` DATETIME NOT NULL                   COMMENT '作成時間',
  `updated` DATETIME NOT NULL                   COMMENT '更新時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
