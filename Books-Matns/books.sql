DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_id` smallint NOT NULL DEFAULT '1',
  `secure_id` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `edited_by` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `book_type` enum('book','matn') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'book',
  `content_type` enum('text','text_input','page') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'text',
  `content_total` int DEFAULT NULL,
  `pdf_file` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_cover` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `secure_id` (`secure_id`),
  KEY `books_created_by_foreign` (`created_by`),
  KEY `books_edited_by_foreign` (`edited_by`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `books` (`id`, `lang_id`, `secure_id`, `created_by`, `edited_by`, `title`, `description`, `book_type`, `content_type`, `content_total`, `pdf_file`, `photo_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '285a832b-5960-4696-818a-d4e157ba61f2', 1, NULL, ' متن الجزرية', '<p>&nbsp;متن منظومة الجزرية في علم التجويد.</p>\r\n<p>&nbsp;للإمام شمس الدين محمد بن الجزري. </p>\r\n<p>&nbsp;</p>', 'matn', 'text_input', 126, NULL, NULL, '2024-06-08 16:45:30', '2024-06-08 16:45:30', NULL),
(2, 1, '456ba8af-0687-4b3d-a41d-3f0d51f29c68', 1, NULL, 'متن الجمزورية - تحفة الأطفال', '<p>تُحْفَةُ الْأَطْفَالِ وَالْغِلْمَانِ فِي تَجْوِيْدِ الْقُرْآنِ</p>\r\n<p>للشَّيخِ سُلَيمَانَ بنِ حُسَينِ بنِ مُحَمَّدِ بنِ شَلَبِيٍّ الْـجَمْزُورِيِّ</p>\r\n<p>الشَّهِيرِ بِالأَفَنْدِيِّ</p>', 'matn', 'text_input', 64, NULL, NULL, '2024-06-08 16:57:56', '2024-06-08 16:57:56', NULL);
