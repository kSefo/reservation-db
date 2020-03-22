INSERT INTO sales_day(`sales_day`, `start_time`, `end_time`, `holiday`, `created`, `updated`) VALUES
('日', '10:00', '20:00', '0', NOW(), NOW()),
('月', '10:00', '20:00', '0', NOW(), NOW()),
('火', '10:00', '20:00', '0', NOW(), NOW()),
('水', '10:00', '20:00', '0', NOW(), NOW()),
('木', '10:00', '20:00', '0', NOW(), NOW()),
('金', '10:00', '20:00', '0', NOW(), NOW()),
('土', '10:00', '20:00', '0', NOW(), NOW());


INSERT INTO user(`user_name`, `user_tel`, `user_email`, `created`, `updated`) VALUES
('たろう', 'xxx-xxxx-xxxx', 'xxx@xxx', NOW(), NOW()),
('じろう', 'xxx-xxxx-xxxx', 'xxx@xxx', NOW(), NOW());


INSERT INTO menu(`menu_name`, `created`, `updated`) VALUES
('筋トレ', NOW(), NOW()),
('ボクササイズ', NOW(), NOW());


INSERT INTO reservation(`user_id`, `menu_id`, `reservation_datetime`, `created`, `updated`) VALUES
('1', '1', '2020-02-01 11:00',  NOW(), NOW()),
('2', '2', '2020-02-01 11:00',  NOW(), NOW());
