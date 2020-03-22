DROP TABLE IF EXISTS `sales_day`;
CREATE TABLE IF not exists `sales_day` (
  `sales_day` VARCHAR(10) NOT NULL  COMMENT '営業日',
  `start_time` VARCHAR(10) NOT NULL COMMENT '開始時間',
  `end_time` VARCHAR(10) NOT NULL   COMMENT '終了時間',
  `holiday` TINYINT(1) NOT NULL     COMMENT '休業日',
  `created` DATETIME NOT NULL       COMMENT '作成時間',
  `updated` DATETIME NOT NULL       COMMENT '更新時間',
  PRIMARY KEY (`sales_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `user`;
CREATE TABLE IF not exists `user` (
  `user_id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'ユーザID',
  `user_name` VARCHAR(20) NOT NULL                   COMMENT '氏名',
  `user_tel` VARCHAR(20) NOT NULL                    COMMENT '電話番号',
  `user_email` VARCHAR(50) NOT NULL                  COMMENT 'メールアドレス',
  `created` DATETIME NOT NULL                        COMMENT '作成時間',
  `updated` DATETIME NOT NULL                        COMMENT '更新時間',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF not exists `menu` (
  `menu_id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'メニューID',
  `menu_name` VARCHAR(20) NOT NULL                   COMMENT 'メニュー名',
  `created` DATETIME NOT NULL                        COMMENT '作成時間',
  `updated` DATETIME NOT NULL                        COMMENT '更新時間',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF not exists `reservation` (
  `reservation_id` INT(10) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '予約ID',
  `user_id` INT(10) NOT NULL                                COMMENT 'ユーザID',
  `menu_id` INT(10) NOT NULL                                COMMENT 'メニューID',
  `reservation_datetime` DATETIME NOT NULL                  COMMENT '予約日時',
  `created` DATETIME NOT NULL                               COMMENT '作成時間',
  `updated` DATETIME NOT NULL                               COMMENT '更新時間',
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
