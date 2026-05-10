-- ============================================================
--   Smart Mini E-Commerce System
--   Milestone 5 — DML Scripts (Data Population)
--   Student: Abdul Hameed & Numan Ali | BSAI (B)
--   Database Systems Lab
-- ============================================================

USE ecommerce_db;

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';

-- ============================================================
-- INSERT INTO categories (10 rows)
-- ============================================================
INSERT INTO categories (category_id, category_name) VALUES
    ('1', 'Electronics'),
    ('2', 'Clothing'),
    ('3', 'Books'),
    ('4', 'Home Appliances'),
    ('5', 'Sports & Fitness'),
    ('6', 'Toys & Games'),
    ('7', 'Beauty & Health'),
    ('8', 'Food & Grocery'),
    ('9', 'Stationery'),
    ('10', 'Mobiles & Tablets');
-- 10 rows inserted into categories

-- ============================================================
-- INSERT INTO users (60 rows)
-- ============================================================
INSERT INTO users (user_id, name, email, password, role, created_at) VALUES
    ('1', 'Abdul Hameed', 'abdulhameed@gmail.com', 'hameed123', 'customer', '2026-05-10 15:02:40'),
    ('2', 'Admin User', 'admin@shop.com', 'admin123', 'admin', '2026-05-10 15:02:40'),
    ('3', 'Numan Ali', 'numanali@gmail.com', 'numan123', 'customer', '2026-05-10 15:02:40'),
    ('4', 'Sara Khan', 'sara.khan655@gmail.com', 'pass4@123', 'customer', '2025-09-17 18:23:27'),
    ('5', 'Fatima Malik', 'fatima.malik115@gmail.com', 'pass5@123', 'customer', '2026-03-06 04:50:08'),
    ('6', 'Muhammad Usman', 'muhammad.usman26@gmail.com', 'pass6@123', 'customer', '2025-07-18 12:22:19'),
    ('7', 'Ayesha Raza', 'ayesha.raza760@gmail.com', 'pass7@123', 'customer', '2025-05-28 12:44:46'),
    ('8', 'Bilal Hassan', 'bilal.hassan282@gmail.com', 'pass8@123', 'customer', '2025-11-04 15:57:43'),
    ('9', 'Zainab Qureshi', 'zainab.qureshi251@gmail.com', 'pass9@123', 'customer', '2025-07-09 11:34:01'),
    ('10', 'Hamza Shah', 'hamza.shah229@gmail.com', 'pass10@123', 'customer', '2026-02-23 05:34:04'),
    ('11', 'Sana Tariq', 'sana.tariq143@gmail.com', 'pass11@123', 'customer', '2025-11-29 07:33:48'),
    ('12', 'Imran Baig', 'imran.baig755@gmail.com', 'pass12@123', 'customer', '2026-03-17 06:25:25'),
    ('13', 'Maryam Ijaz', 'maryam.ijaz105@gmail.com', 'pass13@123', 'customer', '2025-05-30 15:32:06'),
    ('14', 'Farhan Siddiqui', 'farhan.siddiqui693@gmail.com', 'pass14@123', 'customer', '2025-05-19 07:44:36'),
    ('15', 'Hina Noor', 'hina.noor759@gmail.com', 'pass15@123', 'customer', '2026-02-11 05:25:15'),
    ('16', 'Asad Mehmood', 'asad.mehmood914@gmail.com', 'pass16@123', 'customer', '2026-01-24 20:16:41'),
    ('17', 'Rabia Hussain', 'rabia.hussain559@gmail.com', 'pass17@123', 'customer', '2025-09-23 21:35:52'),
    ('18', 'Kamran Iqbal', 'kamran.iqbal90@gmail.com', 'pass18@123', 'customer', '2026-03-18 10:42:31'),
    ('19', 'Nadia Riaz', 'nadia.riaz605@gmail.com', 'pass19@123', 'customer', '2025-12-30 03:35:46'),
    ('20', 'Salman Butt', 'salman.butt433@gmail.com', 'pass20@123', 'customer', '2026-04-15 09:55:08'),
    ('21', 'Amna Chaudhry', 'amna.chaudhry33@gmail.com', 'pass21@123', 'customer', '2026-05-02 23:59:29'),
    ('22', 'Shahid Nawaz', 'shahid.nawaz31@gmail.com', 'pass22@123', 'customer', '2025-06-23 12:42:44'),
    ('23', 'Huma Bashir', 'huma.bashir96@gmail.com', 'pass23@123', 'customer', '2026-04-17 22:31:08'),
    ('24', 'Umer Farooq', 'umer.farooq224@gmail.com', 'pass24@123', 'customer', '2025-06-28 05:25:18'),
    ('25', 'Kiran Aslam', 'kiran.aslam239@gmail.com', 'pass25@123', 'customer', '2025-11-26 02:17:17'),
    ('26', 'Tariq Mahmood', 'tariq.mahmood518@gmail.com', 'pass26@123', 'customer', '2025-09-26 15:15:29'),
    ('27', 'Saima Javed', 'saima.javed617@gmail.com', 'pass27@123', 'customer', '2026-04-17 09:39:26'),
    ('28', 'Waseem Akram', 'waseem.akram28@gmail.com', 'pass28@123', 'customer', '2026-03-11 20:22:14'),
    ('29', 'Sobia Khalid', 'sobia.khalid575@gmail.com', 'pass29@123', 'customer', '2026-01-12 15:56:37'),
    ('30', 'Adnan Mir', 'adnan.mir204@gmail.com', 'pass30@123', 'customer', '2025-05-20 12:34:17'),
    ('31', 'Madiha Yousaf', 'madiha.yousaf734@gmail.com', 'pass31@123', 'customer', '2025-08-14 07:32:49'),
    ('32', 'Faisal Rehman', 'faisal.rehman666@gmail.com', 'pass32@123', 'customer', '2026-04-14 16:42:35'),
    ('33', 'Uzma Jamil', 'uzma.jamil719@gmail.com', 'pass33@123', 'customer', '2025-12-29 09:28:35'),
    ('34', 'Shahzad Khan', 'shahzad.khan559@gmail.com', 'pass34@123', 'customer', '2026-03-03 14:52:50'),
    ('35', 'Layla Dar', 'layla.dar430@gmail.com', 'pass35@123', 'customer', '2026-04-16 02:06:11'),
    ('36', 'Naveed Akhtar', 'naveed.akhtar226@gmail.com', 'pass36@123', 'customer', '2025-08-24 14:48:45'),
    ('37', 'Amira Zafar', 'amira.zafar460@gmail.com', 'pass37@123', 'customer', '2025-12-03 12:14:04'),
    ('38', 'Tahir Shahzad', 'tahir.shahzad604@gmail.com', 'pass38@123', 'customer', '2025-12-15 21:11:03'),
    ('39', 'Maira Qadri', 'maira.qadri285@gmail.com', 'pass39@123', 'customer', '2025-11-06 11:35:14'),
    ('40', 'Junaid Malik', 'junaid.malik829@gmail.com', 'pass40@123', 'customer', '2026-04-13 20:21:41'),
    ('41', 'Zara Ahmed', 'zara.ahmed891@gmail.com', 'pass41@123', 'customer', '2026-04-05 13:04:10'),
    ('42', 'Arslan Sheikh', 'arslan.sheikh7@gmail.com', 'pass42@123', 'customer', '2026-03-29 02:17:30'),
    ('43', 'Nida Pervez', 'nida.pervez778@gmail.com', 'pass43@123', 'customer', '2025-07-08 01:50:32'),
    ('44', 'Mujtaba Ali', 'mujtaba.ali826@gmail.com', 'pass44@123', 'customer', '2025-10-10 13:04:36'),
    ('45', 'Rabia Anwar', 'rabia.anwar164@gmail.com', 'pass45@123', 'customer', '2025-12-16 06:58:49'),
    ('46', 'Shaheen Baig', 'shaheen.baig715@gmail.com', 'pass46@123', 'customer', '2025-11-15 17:59:51'),
    ('47', 'Rizwan Haider', 'rizwan.haider433@gmail.com', 'pass47@123', 'customer', '2025-06-22 02:11:15'),
    ('48', 'Nimra Hussain', 'nimra.hussain349@gmail.com', 'pass48@123', 'customer', '2025-11-08 22:17:49'),
    ('49', 'Saqib Ghani', 'saqib.ghani285@gmail.com', 'pass49@123', 'customer', '2025-05-14 00:00:59'),
    ('50', 'Erum Farhan', 'erum.farhan160@gmail.com', 'pass50@123', 'customer', '2025-06-19 21:59:49'),
    ('51', 'Talha Aziz', 'talha.aziz221@gmail.com', 'pass51@123', 'customer', '2025-05-17 23:20:16'),
    ('52', 'Mehwish Toor', 'mehwish.toor981@gmail.com', 'pass52@123', 'customer', '2025-11-27 04:08:09'),
    ('53', 'Abubakar Sadiq', 'abubakar.sadiq782@gmail.com', 'pass53@123', 'customer', '2026-04-21 23:47:55'),
    ('54', 'Irum Shafiq', 'irum.shafiq345@gmail.com', 'pass54@123', 'customer', '2025-11-23 12:41:29'),
    ('55', 'Raza Gillani', 'raza.gillani105@gmail.com', 'pass55@123', 'customer', '2025-10-19 13:06:36'),
    ('56', 'Saman Waheed', 'saman.waheed95@gmail.com', 'pass56@123', 'customer', '2025-08-22 14:08:54'),
    ('57', 'Farheen Chaudhry', 'farheen.chaudhry390@gmail.com', 'pass57@123', 'customer', '2026-04-27 03:03:57'),
    ('58', 'Awais Mirza', 'awais.mirza100@gmail.com', 'pass58@123', 'customer', '2025-11-07 16:44:40'),
    ('59', 'Bushra Niazi', 'bushra.niazi368@gmail.com', 'pass59@123', 'customer', '2025-07-27 23:30:08'),
    ('60', 'Zaid Hamdan', 'zaid.hamdan868@gmail.com', 'pass60@123', 'customer', '2025-11-11 19:10:34');
-- 60 rows inserted into users

-- ============================================================
-- INSERT INTO products (64 rows)
-- ============================================================
INSERT INTO products (product_id, name, price, stock, category_id, image, created_at) VALUES
    ('1', 'Samsung Galaxy A54', '45000', '10', '1', 'samsung_galaxy_a54.jpg', '2025-12-02 02:15:49'),
    ('2', 'HP Laptop 15s', '85000', '5', '1', 'hp_laptop_15s.jpg', '2026-03-02 23:29:37'),
    ('3', 'Wireless Earbuds Pro', '3500', '20', '1', 'wireless_earbuds_pro.jpg', '2026-01-02 00:04:22'),
    ('4', 'Sony Headphones', '8500', '15', '1', 'sony_headphones.jpg', '2026-01-12 07:17:34'),
    ('5', 'USB-C Hub 7-in-1', '2200', '30', '1', 'usb-c_hub_7-in-1.jpg', '2025-09-28 08:43:03'),
    ('6', 'Portable Charger 20000mAh', '4500', '25', '1', 'portable_charger_20000mah.jpg', '2025-06-15 05:55:41'),
    ('7', 'Smart Watch Series 6', '12000', '12', '1', 'smart_watch_series_6.jpg', '2025-10-18 19:39:53'),
    ('8', 'Bluetooth Speaker JBL', '6500', '18', '1', 'bluetooth_speaker_jbl.jpg', '2026-03-29 09:59:35'),
    ('9', 'Shalwar Kameez Blue', '1200', '50', '2', 'shalwar_kameez_blue.jpg', '2026-05-04 04:54:48'),
    ('10', 'Denim Jeans Slim Fit', '2800', '40', '2', 'denim_jeans_slim_fit.jpg', '2025-08-21 14:47:00'),
    ('11', 'Cotton T-Shirt Pack', '900', '60', '2', 'cotton_t-shirt_pack.jpg', '2025-05-29 04:52:53'),
    ('12', 'Winter Jacket Black', '5500', '20', '2', 'winter_jacket_black.jpg', '2025-08-22 04:18:31'),
    ('13', 'Formal Shirt White', '1800', '35', '2', 'formal_shirt_white.jpg', '2026-02-01 02:35:58'),
    ('14', 'Kurta Embroidered', '2200', '28', '2', 'kurta_embroidered.jpg', '2026-04-27 20:41:32'),
    ('15', 'Trousers Formal', '2500', '22', '2', 'trousers_formal.jpg', '2025-09-20 04:18:27'),
    ('16', 'Waistcoat Brown', '3200', '15', '2', 'waistcoat_brown.jpg', '2026-01-25 09:36:07'),
    ('17', 'Python Programming Guide', '800', '15', '3', 'python_programming_guide.jpg', '2026-02-26 12:01:01'),
    ('18', 'Database Systems 7th Ed', '1200', '20', '3', 'database_systems_7th_ed.jpg', '2026-02-08 06:08:43'),
    ('19', 'Data Structures Shaffer', '950', '18', '3', 'data_structures_shaffer.jpg', '2026-01-16 05:47:57'),
    ('20', 'C++ Complete Reference', '1100', '12', '3', 'c++_complete_reference.jpg', '2026-04-28 23:30:48'),
    ('21', 'Web Development Duckett', '1400', '10', '3', 'web_development_duckett.jpg', '2025-12-26 02:57:01'),
    ('22', 'Algorithms Cormen', '1600', '8', '3', 'algorithms_cormen.jpg', '2025-11-01 13:48:33'),
    ('23', 'Machine Learning Hands-On', '1800', '14', '3', 'machine_learning_hands-on.jpg', '2026-01-10 19:50:26'),
    ('24', 'Operating Systems Tanenbaum', '1300', '10', '3', 'operating_systems_tanenbaum.jpg', '2025-11-16 13:57:38'),
    ('25', 'Lahori Fan 56 Inch', '6500', '8', '4', 'lahori_fan_56_inch.jpg', '2026-04-16 03:37:52'),
    ('26', 'Room Cooler Super Asia', '28000', '5', '4', 'room_cooler_super_asia.jpg', '2026-04-11 12:06:56'),
    ('27', 'Microwave Oven Dawlance', '18000', '7', '4', 'microwave_oven_dawlance.jpg', '2026-03-30 18:42:03'),
    ('28', 'Electric Iron Philips', '3500', '20', '4', 'electric_iron_philips.jpg', '2025-06-16 00:48:34'),
    ('29', 'Rice Cooker 1.8L', '4200', '12', '4', 'rice_cooker_1.8l.jpg', '2026-03-30 23:20:59'),
    ('30', 'Blender National', '2800', '15', '4', 'blender_national.jpg', '2026-01-16 19:34:41'),
    ('31', 'Vacuum Cleaner Philips', '12000', '6', '4', 'vacuum_cleaner_philips.jpg', '2026-02-11 14:49:33'),
    ('32', 'Water Dispenser PEL', '22000', '4', '4', 'water_dispenser_pel.jpg', '2025-11-22 20:31:12'),
    ('33', 'Cricket Bat Kashmir Willow', '4500', '10', '5', 'cricket_bat_kashmir_willow.jpg', '2025-06-30 01:48:53'),
    ('34', 'Football Nike Size 5', '2200', '15', '5', 'football_nike_size_5.jpg', '2026-04-23 14:28:06'),
    ('35', 'Yoga Mat Non-Slip', '1800', '20', '5', 'yoga_mat_non-slip.jpg', '2025-10-09 01:24:30'),
    ('36', 'Dumbbells Set 20kg', '8500', '8', '5', 'dumbbells_set_20kg.jpg', '2025-08-22 11:25:19'),
    ('37', 'Badminton Set', '1500', '12', '5', 'badminton_set.jpg', '2025-07-17 06:31:49'),
    ('38', 'Cycling Gloves', '800', '25', '5', 'cycling_gloves.jpg', '2025-06-24 09:29:11'),
    ('39', 'Resistance Bands Set', '1200', '18', '5', 'resistance_bands_set.jpg', '2025-06-06 20:18:45'),
    ('40', 'Skipping Rope Steel', '600', '30', '5', 'skipping_rope_steel.jpg', '2025-11-22 12:07:03'),
    ('41', 'LEGO Classic Set', '3500', '12', '6', 'lego_classic_set.jpg', '2025-08-08 22:19:49'),
    ('42', 'Remote Control Car', '2800', '15', '6', 'remote_control_car.jpg', '2026-04-22 03:29:56'),
    ('43', 'Board Game Monopoly', '2200', '10', '6', 'board_game_monopoly.jpg', '2025-11-18 00:23:21'),
    ('44', 'Puzzle 1000 Pieces', '1500', '20', '6', 'puzzle_1000_pieces.jpg', '2025-09-13 04:59:57'),
    ('45', 'Action Figure Marvel', '1800', '25', '6', 'action_figure_marvel.jpg', '2025-10-05 22:51:39'),
    ('46', 'Toy Kitchen Set', '4200', '8', '6', 'toy_kitchen_set.jpg', '2025-06-11 14:58:28'),
    ('47', 'Face Wash Neutrogena', '850', '30', '7', 'face_wash_neutrogena.jpg', '2026-04-13 08:04:05'),
    ('48', 'Moisturizer SPF50', '1200', '25', '7', 'moisturizer_spf50.jpg', '2025-11-20 04:46:31'),
    ('49', 'Shampoo Pantene 400ml', '680', '40', '7', 'shampoo_pantene_400ml.jpg', '2025-10-21 01:58:42'),
    ('50', 'Electric Trimmer Philips', '4500', '12', '7', 'electric_trimmer_philips.jpg', '2026-01-25 02:51:58'),
    ('51', 'Perfume Axe 150ml', '1100', '20', '7', 'perfume_axe_150ml.jpg', '2025-12-02 23:55:24'),
    ('52', 'Multivitamins 30 Tabs', '950', '35', '7', 'multivitamins_30_tabs.jpg', '2025-10-04 12:59:52'),
    ('53', 'Basmati Rice 5kg', '1800', '25', '8', 'basmati_rice_5kg.jpg', '2026-02-22 01:36:55'),
    ('54', 'Olive Oil 750ml', '1400', '20', '8', 'olive_oil_750ml.jpg', '2026-05-09 10:40:30'),
    ('55', 'Green Tea 100 Bags', '650', '30', '8', 'green_tea_100_bags.jpg', '2025-05-27 00:17:00'),
    ('56', 'Honey Pure 500g', '1100', '15', '8', 'honey_pure_500g.jpg', '2026-04-20 00:29:29'),
    ('57', 'A4 Paper Ream 500', '950', '40', '9', 'a4_paper_ream_500.jpg', '2025-08-28 03:12:55'),
    ('58', 'Ball Pen Box 50pcs', '600', '50', '9', 'ball_pen_box_50pcs.jpg', '2025-11-10 02:12:09'),
    ('59', 'Highlighter Set 6', '450', '45', '9', 'highlighter_set_6.jpg', '2025-11-11 21:44:59'),
    ('60', 'Notebook A4 Hardcover', '380', '60', '9', 'notebook_a4_hardcover.jpg', '2026-04-17 03:00:03'),
    ('61', 'iPhone 13 128GB', '195000', '3', '10', 'iphone_13_128gb.jpg', '2025-06-05 20:37:46'),
    ('62', 'Xiaomi Redmi Note 12', '52000', '8', '10', 'xiaomi_redmi_note_12.jpg', '2026-04-20 13:06:31'),
    ('63', 'Oppo A78 128GB', '48000', '10', '10', 'oppo_a78_128gb.jpg', '2025-08-26 23:34:32'),
    ('64', 'Samsung A14 64GB', '38000', '12', '10', 'samsung_a14_64gb.jpg', '2026-03-30 23:53:51');
-- 64 rows inserted into products

-- ============================================================
-- INSERT INTO cart (55 rows)
-- ============================================================
INSERT INTO cart (cart_id, user_id, product_id, quantity) VALUES
    ('1', '23', '39', '4'),
    ('2', '55', '54', '2'),
    ('3', '32', '29', '3'),
    ('4', '28', '63', '1'),
    ('5', '25', '44', '4'),
    ('6', '47', '22', '4'),
    ('7', '59', '17', '1'),
    ('8', '59', '51', '1'),
    ('9', '6', '55', '2'),
    ('10', '56', '60', '2'),
    ('11', '4', '34', '4'),
    ('12', '21', '28', '4'),
    ('13', '21', '44', '4'),
    ('14', '18', '54', '3'),
    ('15', '54', '11', '4'),
    ('16', '2', '7', '3'),
    ('17', '15', '9', '1'),
    ('18', '49', '4', '2'),
    ('19', '13', '3', '2'),
    ('20', '16', '17', '4'),
    ('21', '43', '15', '2'),
    ('22', '30', '33', '3'),
    ('23', '11', '15', '2'),
    ('24', '20', '14', '1'),
    ('25', '60', '40', '4'),
    ('26', '26', '26', '1'),
    ('27', '38', '32', '1'),
    ('28', '45', '39', '1'),
    ('29', '51', '6', '3'),
    ('30', '35', '55', '3'),
    ('31', '5', '44', '1'),
    ('32', '53', '63', '1'),
    ('33', '28', '47', '4'),
    ('34', '46', '20', '4'),
    ('35', '12', '35', '4'),
    ('36', '30', '56', '3'),
    ('37', '21', '32', '1'),
    ('38', '18', '58', '2'),
    ('39', '49', '60', '4'),
    ('40', '22', '4', '4'),
    ('41', '55', '42', '2'),
    ('42', '32', '28', '3'),
    ('43', '52', '34', '3'),
    ('44', '18', '36', '1'),
    ('45', '34', '25', '1'),
    ('46', '16', '53', '4'),
    ('47', '36', '31', '4'),
    ('48', '42', '63', '4'),
    ('49', '51', '3', '1'),
    ('50', '19', '29', '4'),
    ('51', '45', '32', '3'),
    ('52', '43', '48', '4'),
    ('53', '36', '45', '4'),
    ('54', '48', '43', '3'),
    ('55', '45', '59', '3');
-- 55 rows inserted into cart

-- ============================================================
-- INSERT INTO orders (75 rows)
-- ============================================================
INSERT INTO orders (order_id, user_id, total_price, status, order_date) VALUES
    ('1', '23', '90757.04', 'Delivered', '2026-01-01 20:38:13'),
    ('2', '47', '69184.02', 'Pending', '2026-04-19 01:33:24'),
    ('3', '60', '57090.89', 'Delivered', '2026-02-05 00:42:01'),
    ('4', '54', '94481.65', 'Delivered', '2026-03-13 22:12:09'),
    ('5', '24', '86814.15', 'Delivered', '2025-11-12 01:24:19'),
    ('6', '3', '99358.87', 'Delivered', '2025-12-22 13:55:16'),
    ('7', '6', '128370.0', 'Delivered', '2026-01-17 10:45:08'),
    ('8', '25', '42057.05', 'Delivered', '2025-11-09 15:35:30'),
    ('9', '24', '24816.79', 'Shipped', '2026-02-24 20:26:10'),
    ('10', '43', '40413.18', 'Cancelled', '2025-11-30 16:30:56'),
    ('11', '42', '11174.68', 'Delivered', '2026-03-16 18:04:32'),
    ('12', '35', '109504.46', 'Pending', '2026-01-08 22:12:29'),
    ('13', '25', '40857.2', 'Cancelled', '2026-01-10 08:16:35'),
    ('14', '45', '83763.99', 'Delivered', '2026-02-08 21:03:25'),
    ('15', '54', '115362.88', 'Pending', '2025-12-28 23:50:44'),
    ('16', '53', '5298.99', 'Shipped', '2026-03-19 11:39:57'),
    ('17', '18', '10395.2', 'Cancelled', '2026-04-22 14:00:51'),
    ('18', '37', '131516.96', 'Shipped', '2026-03-21 19:08:02'),
    ('19', '42', '75135.07', 'Delivered', '2025-11-19 07:02:32'),
    ('20', '42', '69098.35', 'Pending', '2026-01-14 17:52:00'),
    ('21', '16', '111875.85', 'Delivered', '2025-12-22 16:29:39'),
    ('22', '48', '87895.61', 'Delivered', '2026-05-01 06:22:21'),
    ('23', '26', '54618.47', 'Cancelled', '2026-02-21 20:25:30'),
    ('24', '9', '76674.18', 'Pending', '2025-11-27 01:53:44'),
    ('25', '4', '129234.88', 'Pending', '2025-12-02 10:08:18'),
    ('26', '11', '118915.86', 'Shipped', '2025-12-06 21:57:12'),
    ('27', '5', '58022.71', 'Delivered', '2026-03-08 19:51:44'),
    ('28', '30', '79602.59', 'Cancelled', '2026-02-05 10:37:04'),
    ('29', '56', '141393.41', 'Delivered', '2025-12-11 15:03:20'),
    ('30', '8', '102415.7', 'Delivered', '2026-01-29 12:59:52'),
    ('31', '18', '115405.51', 'Shipped', '2025-11-09 12:37:19'),
    ('32', '19', '65497.4', 'Shipped', '2025-11-24 14:23:28'),
    ('33', '47', '131440.01', 'Pending', '2026-03-12 22:18:07'),
    ('34', '33', '114413.35', 'Delivered', '2026-04-24 11:30:13'),
    ('35', '7', '130642.53', 'Pending', '2025-11-14 14:41:52'),
    ('36', '41', '76395.6', 'Pending', '2026-05-09 01:45:34'),
    ('37', '24', '114495.36', 'Delivered', '2026-03-07 18:02:58'),
    ('38', '50', '138403.9', 'Cancelled', '2026-04-01 20:45:23'),
    ('39', '39', '48961.33', 'Pending', '2025-11-20 17:28:29'),
    ('40', '60', '54765.62', 'Cancelled', '2025-11-09 11:12:04'),
    ('41', '52', '46473.36', 'Pending', '2026-02-17 19:52:47'),
    ('42', '57', '85319.86', 'Pending', '2025-11-15 13:01:00'),
    ('43', '47', '73155.57', 'Pending', '2025-12-07 14:05:36'),
    ('44', '49', '80139.57', 'Pending', '2026-01-11 01:02:29'),
    ('45', '43', '71554.72', 'Delivered', '2026-05-05 07:26:17'),
    ('46', '17', '79387.23', 'Delivered', '2026-02-28 11:51:17'),
    ('47', '14', '139372.57', 'Delivered', '2026-02-18 03:03:19'),
    ('48', '45', '30572.08', 'Shipped', '2026-03-16 21:34:41'),
    ('49', '43', '97656.77', 'Shipped', '2026-01-22 17:29:34'),
    ('50', '34', '67997.18', 'Pending', '2026-03-27 10:27:54'),
    ('51', '5', '51043.79', 'Delivered', '2026-01-11 11:35:59'),
    ('52', '15', '88471.8', 'Pending', '2026-02-13 17:35:31'),
    ('53', '46', '94849.89', 'Pending', '2026-03-20 22:33:27'),
    ('54', '58', '5196.24', 'Shipped', '2025-11-19 13:38:15'),
    ('55', '33', '36081.69', 'Delivered', '2026-01-03 13:31:54'),
    ('56', '14', '81115.47', 'Delivered', '2026-03-11 17:23:11'),
    ('57', '57', '85870.94', 'Shipped', '2025-11-27 18:03:05'),
    ('58', '51', '71209.45', 'Shipped', '2026-04-08 17:55:01'),
    ('59', '7', '14991.16', 'Shipped', '2025-11-29 17:14:45'),
    ('60', '28', '61959.79', 'Delivered', '2026-01-23 10:29:54'),
    ('61', '4', '101168.0', 'Cancelled', '2026-01-09 06:24:21'),
    ('62', '7', '9561.59', 'Delivered', '2026-04-09 10:35:44'),
    ('63', '52', '129320.04', 'Pending', '2026-04-28 20:22:25'),
    ('64', '13', '80674.72', 'Pending', '2026-03-24 08:16:43'),
    ('65', '12', '42142.5', 'Pending', '2026-02-23 23:33:52'),
    ('66', '60', '11770.04', 'Delivered', '2026-02-17 08:48:04'),
    ('67', '55', '82773.63', 'Pending', '2025-12-13 16:40:01'),
    ('68', '35', '125486.12', 'Cancelled', '2026-04-03 17:56:24'),
    ('69', '60', '113158.04', 'Pending', '2026-01-30 16:26:29'),
    ('70', '27', '73103.35', 'Pending', '2026-03-09 20:55:46'),
    ('71', '26', '135415.21', 'Pending', '2026-04-19 11:01:01'),
    ('72', '1', '147803.67', 'Pending', '2026-01-16 01:35:09'),
    ('73', '51', '117876.84', 'Pending', '2026-02-08 19:48:25'),
    ('74', '45', '143618.99', 'Cancelled', '2025-11-10 21:12:52'),
    ('75', '36', '99449.76', 'Shipped', '2025-12-12 22:10:38');
-- 75 rows inserted into orders

-- ============================================================
-- INSERT INTO order_items (100 rows)
-- ============================================================
INSERT INTO order_items (item_id, order_id, product_id, quantity, price) VALUES
    ('1', '58', '14', '1', '2200'),
    ('2', '58', '18', '1', '1200'),
    ('3', '58', '34', '5', '2200'),
    ('4', '13', '35', '3', '1800'),
    ('5', '43', '27', '5', '18000'),
    ('6', '43', '44', '4', '1500'),
    ('7', '43', '34', '3', '2200'),
    ('8', '24', '12', '4', '5500'),
    ('9', '35', '6', '3', '4500'),
    ('10', '35', '1', '2', '45000'),
    ('11', '29', '34', '5', '2200'),
    ('12', '29', '21', '4', '1400'),
    ('13', '29', '57', '5', '950'),
    ('14', '45', '15', '1', '2500'),
    ('15', '51', '20', '5', '1100'),
    ('16', '51', '5', '5', '2200'),
    ('17', '51', '48', '2', '1200'),
    ('18', '23', '17', '3', '800'),
    ('19', '23', '6', '3', '4500'),
    ('20', '59', '46', '2', '4200'),
    ('21', '69', '32', '5', '22000'),
    ('22', '69', '14', '4', '2200'),
    ('23', '69', '46', '5', '4200'),
    ('24', '31', '20', '2', '1100'),
    ('25', '31', '31', '4', '12000'),
    ('26', '31', '21', '1', '1400'),
    ('27', '2', '43', '4', '2200'),
    ('28', '54', '32', '1', '22000'),
    ('29', '54', '35', '4', '1800'),
    ('30', '54', '21', '1', '1400'),
    ('31', '30', '29', '4', '4200'),
    ('32', '30', '26', '3', '28000'),
    ('33', '32', '30', '1', '2800'),
    ('34', '32', '29', '2', '4200'),
    ('35', '67', '43', '1', '2200'),
    ('36', '67', '36', '3', '8500'),
    ('37', '18', '52', '1', '950'),
    ('38', '18', '43', '1', '2200'),
    ('39', '61', '23', '1', '1800'),
    ('40', '61', '34', '1', '2200'),
    ('41', '63', '56', '4', '1100'),
    ('42', '63', '45', '5', '1800'),
    ('43', '63', '41', '5', '3500'),
    ('44', '19', '50', '5', '4500'),
    ('45', '20', '33', '1', '4500'),
    ('46', '73', '56', '3', '1100'),
    ('47', '73', '1', '4', '45000'),
    ('48', '73', '26', '1', '28000'),
    ('49', '1', '43', '3', '2200'),
    ('50', '1', '41', '5', '3500'),
    ('51', '1', '16', '3', '3200'),
    ('52', '46', '53', '3', '1800'),
    ('53', '46', '42', '5', '2800'),
    ('54', '46', '52', '2', '950'),
    ('55', '75', '54', '4', '1400'),
    ('56', '11', '23', '5', '1800'),
    ('57', '11', '39', '1', '1200'),
    ('58', '11', '52', '3', '950'),
    ('59', '15', '27', '5', '18000'),
    ('60', '15', '56', '5', '1100'),
    ('61', '10', '42', '4', '2800'),
    ('62', '10', '60', '2', '380'),
    ('63', '10', '57', '5', '950'),
    ('64', '36', '22', '3', '1600'),
    ('65', '36', '11', '5', '900'),
    ('66', '22', '43', '3', '2200'),
    ('67', '22', '12', '2', '5500'),
    ('68', '22', '31', '2', '12000'),
    ('69', '9', '4', '1', '8500'),
    ('70', '52', '61', '5', '195000'),
    ('71', '42', '59', '4', '450'),
    ('72', '49', '25', '4', '6500'),
    ('73', '49', '50', '2', '4500'),
    ('74', '49', '64', '2', '38000'),
    ('75', '47', '1', '2', '45000'),
    ('76', '47', '14', '2', '2200'),
    ('77', '47', '55', '5', '650'),
    ('78', '14', '7', '1', '12000'),
    ('79', '14', '32', '4', '22000'),
    ('80', '17', '60', '5', '380'),
    ('81', '64', '41', '5', '3500'),
    ('82', '64', '57', '4', '950'),
    ('83', '64', '55', '2', '650'),
    ('84', '34', '61', '2', '195000'),
    ('85', '34', '58', '3', '600'),
    ('86', '34', '34', '5', '2200'),
    ('87', '50', '31', '4', '12000'),
    ('88', '50', '36', '1', '8500'),
    ('89', '48', '37', '3', '1500'),
    ('90', '48', '31', '3', '12000'),
    ('91', '48', '35', '5', '1800'),
    ('92', '27', '18', '2', '1200'),
    ('93', '60', '50', '2', '4500'),
    ('94', '40', '28', '4', '3500'),
    ('95', '40', '9', '3', '1200'),
    ('96', '40', '54', '5', '1400'),
    ('97', '3', '54', '2', '1400'),
    ('98', '3', '8', '4', '6500'),
    ('99', '56', '3', '4', '3500'),
    ('100', '56', '49', '1', '680');
-- 100 rows inserted into order_items

SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- UPDATE OPERATIONS (with WHERE condition)
-- ============================================================

-- Update 1: Change order status from Pending to Shipped
UPDATE orders
SET status = 'Shipped'
WHERE order_id = 1 AND status = 'Pending';

-- Update 2: Increase stock of a product after restocking
UPDATE products
SET stock = stock + 10
WHERE product_id = 2;

-- Update 3: Update user role to admin
UPDATE users
SET role = 'admin'
WHERE email = 'admin@shop.com';

-- ============================================================
-- DELETE OPERATIONS (with WHERE condition)
-- ============================================================

-- Delete 1: Remove a specific cart item
DELETE FROM cart
WHERE cart_id = 1;

-- Delete 2: Remove cancelled orders older than 6 months
DELETE FROM orders
WHERE status = 'Cancelled'
AND order_date < DATE_SUB(NOW(), INTERVAL 6 MONTH);

-- ============================================================
-- VALIDATION QUERIES
-- ============================================================

-- 1. COUNT(*) for each table
SELECT 'categories'  AS table_name, COUNT(*) AS row_count FROM categories
UNION ALL
SELECT 'users',       COUNT(*) FROM users
UNION ALL
SELECT 'products',    COUNT(*) FROM products
UNION ALL
SELECT 'cart',        COUNT(*) FROM cart
UNION ALL
SELECT 'orders',      COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-- 2. NULL check on key columns
SELECT 'users - NULL email'     AS check_name, COUNT(*) AS null_count FROM users       WHERE email IS NULL
UNION ALL
SELECT 'users - NULL name',      COUNT(*) FROM users       WHERE name IS NULL
UNION ALL
SELECT 'products - NULL name',   COUNT(*) FROM products    WHERE name IS NULL
UNION ALL
SELECT 'products - NULL price',  COUNT(*) FROM products    WHERE price IS NULL
UNION ALL
SELECT 'orders - NULL status',   COUNT(*) FROM orders      WHERE status IS NULL
UNION ALL
SELECT 'cart - NULL quantity',   COUNT(*) FROM cart        WHERE quantity IS NULL;

-- 3. FK integrity check — orders must have valid users
SELECT o.order_id, o.user_id, u.name AS customer_name,
       o.total_price, o.status, o.order_date
FROM orders o
JOIN users u ON o.user_id = u.user_id
LIMIT 10;

-- 4. FK integrity check — order_items must link to valid orders and products
SELECT oi.item_id, o.order_id, p.name AS product_name,
       oi.quantity, oi.price
FROM order_items oi
JOIN orders  o ON oi.order_id   = o.order_id
JOIN products p ON oi.product_id = p.product_id
LIMIT 10;

-- 5. Products per category — JOIN check
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY product_count DESC;

-- 6. Cart items with user and product details
SELECT ca.cart_id, u.name AS user_name, p.name AS product_name,
       ca.quantity, p.price,
       (ca.quantity * p.price) AS subtotal
FROM cart ca
JOIN users    u ON ca.user_id    = u.user_id
JOIN products p ON ca.product_id = p.product_id
LIMIT 10;