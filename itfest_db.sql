-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 06 2025 г., 06:56
-- Версия сервера: 8.0.44
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itfest_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `achievements`
--

CREATE TABLE `achievements` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `achievement` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `achievements`
--

INSERT INTO `achievements` (`id`, `university_id`, `achievement`) VALUES
(1, 1, 'Участие в международных педагогических рейтингах'),
(2, 1, 'Лидер среди педагогических вузов Казахстана'),
(3, 2, '80-летие университета в 2024 году'),
(4, 3, 'Присвоение международного аккредитационного статуса'),
(5, 4, 'Подготовка более 50 000 педагогов с 1937 года'),
(6, 5, 'Высокие результаты студентов на международных олимпиадах по информатике'),
(7, 6, 'Программы стажировок в ведущих IT-компаниях'),
(8, 7, 'Международное сотрудничество с университетами США и Европы'),
(9, 8, 'Проекты студентов выиграли национальные архитектурные конкурсы'),
(10, 9, 'Студенты участвуют в международных художественных выставках'),
(11, 10, 'Международные исследовательские гранты для студентов и преподавателей'),
(12, 11, 'Награды в области науки и техники на национальном уровне'),
(13, 12, 'Концерты и конкурсы на международном уровне'),
(14, 13, 'Партнёрство с международными бизнес-школами'),
(15, 14, 'Лучшие студенты экономических факультетов участвуют в международных кейс-чемпионатах');

-- --------------------------------------------------------

--
-- Структура таблицы `financials`
--

CREATE TABLE `financials` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `tuition_fee` varchar(100) DEFAULT NULL,
  `grants_available` varchar(10) DEFAULT NULL,
  `scholarships` text,
  `discount_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `financials`
--

INSERT INTO `financials` (`id`, `university_id`, `tuition_fee`, `grants_available`, `scholarships`, `discount_info`) VALUES
(1, 1, '1 200 000 KZT/год', 'Да', 'Социальные льготы и стипендии', 'Скидки для сотрудников образования'),
(2, 2, '1 150 000 KZT/год', 'Да', 'Стипендия за академическую успеваемость', 'Нет дополнительных льгот'),
(3, 3, '1 800 000 KZT/год', 'Да', 'Стипендии для талантливых студентов', 'Скидки для иностранных студентов'),
(4, 4, '1 100 000 KZT/год', 'Да', 'Гранты для лучших выпускников школ', 'Нет'),
(5, 5, '2 000 000 KZT/год', 'Да', 'Стипендии для IT-направлений', 'Скидки для топ-10 школ страны'),
(6, 6, '1 900 000 KZT/год', 'Да', 'Стипендии и гранты для физико-математических направлений', 'Нет'),
(7, 7, '2 100 000 KZT/год', 'Да', 'Гранты для лучших студентов по результатам ЕНТ', 'Нет'),
(8, 8, '1 700 000 KZT/год', 'Да', 'Стипендии для творческих студентов', 'Скидки при досрочной оплате'),
(9, 9, '1 800 000 KZT/год', 'Да', 'Стипендии для талантливых художников', 'Нет'),
(10, 10, '1 500 000 KZT/год', 'Да', 'Стипендии для успешных студентов', 'Нет'),
(11, 11, '1 600 000 KZT/год', 'Да', 'Стипендии и гранты', 'Нет'),
(12, 12, '1 700 000 KZT/год', 'Да', 'Стипендии для музыкально одаренных студентов', 'Нет'),
(13, 13, '1 900 000 KZT/год', 'Да', 'Стипендии для лучших студентов', 'Нет'),
(14, 14, '1 850 000 KZT/год', 'Да', 'Стипендии для лучших студентов экономики', 'Нет');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `year` int DEFAULT NULL,
  `event` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `university_id`, `year`, `event`) VALUES
(1, 1, 1928, 'Основан КазНПУ им. Абая'),
(2, 1, 1935, 'Присвоено имя Абая'),
(3, 2, 1944, 'Основан женский педагогический институт'),
(4, 2, 2008, 'Преобразован в университет'),
(5, 3, 1999, 'Основан AIU'),
(6, 4, 1937, 'Основан ЮКПУ'),
(7, 5, 2001, 'Основан КБТУ'),
(8, 6, 2002, 'Основан МУИТ'),
(9, 7, 2018, 'Основан АЙТУ'),
(10, 8, 1957, 'Основан КазГАСА'),
(11, 9, 1945, 'Основан КазНУИ'),
(12, 10, 1996, 'Основан ЕНУ'),
(13, 11, 1934, 'Основан КазНУ'),
(14, 12, 1965, 'Основан КазМОУМЯ'),
(15, 13, 2000, 'Основан AlmaU'),
(16, 14, 1963, 'Основан Narxoz University');

-- --------------------------------------------------------

--
-- Структура таблицы `internationalization`
--

CREATE TABLE `internationalization` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `mobility_programs` varchar(255) DEFAULT NULL,
  `foreign_students_acceptance` varchar(10) DEFAULT NULL,
  `official_docs_link` text,
  `countries` varchar(255) DEFAULT NULL,
  `international_students` varchar(10) DEFAULT NULL,
  `documentation_links` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE `programs` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects` text COLLATE utf8mb4_unicode_ci,
  `grant_threshold` int DEFAULT NULL,
  `paid_threshold` int DEFAULT NULL,
  `grant_2024` int DEFAULT NULL,
  `grants_25_26` int DEFAULT NULL,
  `short_grants_25_26` int DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`id`, `university_id`, `name`, `code`, `subjects`, `grant_threshold`, `paid_threshold`, `grant_2024`, `grants_25_26`, `short_grants_25_26`, `duration`, `language`) VALUES
(1, 1, 'Педагогика', 'ED101', 'Математика, Русский язык', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(2, 2, 'Педагогика', 'ED102', 'Русский язык, Литература', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(3, 3, 'Информационные технологии', 'IT101', 'Математика, Физика', 90, 65, 95, 15, 3, '4 года', 'Русский'),
(4, 5, 'Информатика', 'CS101', 'Математика, Физика', 90, 65, 95, 15, 3, '4 года', 'Русский'),
(5, 5, 'Физика', 'PH101', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(6, 6, 'Информационные технологии', 'IT102', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(7, 7, 'Информационные технологии', 'IT103', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(8, 8, 'Архитектура', 'AR101', 'Рисование, Математика', 85, 60, 90, 10, 2, '5 лет', 'Русский'),
(9, 9, 'Изобразительное искусство', 'ART101', 'Рисование, История искусств', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(10, 10, 'Экономика', 'EC101', 'Математика, Экономика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(11, 11, 'Математика', 'MA101', 'Математика, Физика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(12, 12, 'Музыка', 'MU101', 'Музыкальная теория, История музыки', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(13, 13, 'Бизнес-администрирование', 'BA101', 'Экономика, Математика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(14, 14, 'Экономика и финансы', 'EC102', 'Экономика, Математика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(15, 1, 'Педагогика', 'ED101', 'Математика, Русский язык', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(16, 2, 'Педагогика', 'ED102', 'Русский язык, Литература', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(17, 3, 'Информационные технологии', 'IT101', 'Математика, Физика', 90, 65, 95, 15, 3, '4 года', 'Русский'),
(18, 5, 'Информатика', 'CS101', 'Математика, Физика', 90, 65, 95, 15, 3, '4 года', 'Русский'),
(19, 5, 'Физика', 'PH101', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(20, 6, 'Информационные технологии', 'IT102', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(21, 7, 'Информационные технологии', 'IT103', 'Математика, Физика', 88, 60, 90, 10, 2, '4 года', 'Русский'),
(22, 8, 'Архитектура', 'AR101', 'Рисование, Математика', 85, 60, 90, 10, 2, '5 лет', 'Русский'),
(23, 9, 'Изобразительное искусство', 'ART101', 'Рисование, История искусств', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(24, 10, 'Экономика', 'EC101', 'Математика, Экономика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(25, 11, 'Математика', 'MA101', 'Математика, Физика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(26, 12, 'Музыка', 'MU101', 'Музыкальная теория, История музыки', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(27, 13, 'Бизнес-администрирование', 'BA101', 'Экономика, Математика', 85, 60, 90, 10, 2, '4 года', 'Русский'),
(28, 14, 'Экономика и финансы', 'EC102', 'Экономика, Математика', 85, 60, 90, 10, 2, '4 года', 'Русский');

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `universities`
--

CREATE TABLE `universities` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_founded` int DEFAULT NULL,
  `num_directions` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `military_department` enum('да','нет') COLLATE utf8mb4_unicode_ci DEFAULT 'нет',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `universities`
--

INSERT INTO `universities` (`id`, `name`, `short_name`, `website`, `phone`, `email`, `address`, `year_founded`, `num_directions`, `description`, `military_department`, `created_at`, `updated_at`) VALUES
(1, 'Казахский национальный педагогический университет имени Абая', 'КазНПУ им. Абая', 'https://abaiuniversity.edu.kz', '+7 (727) 390-60-04', 'rector@abaiuniversity.edu.kz', 'г. Алматы, ул. Толе би, 94', 1928, 10, 'Первый педагогический университет Казахстана, готовит квалифицированных педагогов и исследователей.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(2, 'Казахский национальный женский педагогический университет', 'ҚазҚПУ', 'https://qyzpu.edu.kz', '+7 727 237 00 89', 'info@qyzpu.edu.kz', 'г. Алматы, ул. Жандосова, 95', 1944, 8, 'Женский педагогический университет с многолетними традициями подготовки учителей.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(3, 'Astana International University', 'AIU', 'https://aiu.edu.kz', '+7 7172 476677', 'info@aiu.edu.kz', 'г. Астана, ул. Кенесары, 12', 1999, 5, 'Частный университет с международными программами и акцентом на инновации.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(4, 'Южно-Казахстанский педагогический университет имени Өзбекәлі Жәнібеков', 'ЮКПУ', 'https://okmpu.edu.kz', '+7 (7252) 21-29-21', 'info@okmpu.kz', 'г. Шымкент, пр. Абая, 5', 1937, 7, 'Государственный педагогический университет с широким спектром педагогических направлений.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(5, 'Казахский Британский технический университет', 'КБТУ', 'https://kbtu.kz', '+7 (727) 258 91 91', 'admissions@kbtu.kz', 'г. Алматы, ул. Тулебаева, 22', 2001, 6, 'Технический университет с сильной подготовкой по информационным технологиям и физико-математическим наукам.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(6, 'Международный университет информационных технологий', 'МУИТ', 'https://muit.kz', '+7 727 256 11 22', 'info@muit.kz', 'г. Алматы, ул. Достык, 30', 2002, 5, 'Университет с направлениями инфомат и физмат, акцент на IT и точные науки.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(7, 'Астана IT University', 'АЙТУ', 'https://aitu.edu.kz', '+7 7172 111222', 'info@aitu.edu.kz', 'г. Астана, пр. Туран, 5', 2018, 4, 'Молодой университет с сильным IT-профилем и физико-математическими направлениями.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(8, 'Казахская государственная архитектурно-строительная академия', 'КазГАСА', 'https://kgasa.kz', '+7 727 312 33 44', 'info@kgasa.kz', 'г. Алматы, ул. Розыбакиева, 192', 1957, 3, 'Творческий вуз с подготовкой архитекторов и строителей.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(9, 'Казахский национальный университет искусств', 'КазНУИ', 'https://kznui.kz', '+7 727 345 67 89', 'info@kznui.kz', 'г. Алматы, ул. Абылай хана, 17', 1945, 4, 'Творческий университет с направлениями в искусстве и культуре.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(10, 'Евразийский национальный университет имени Л.Н. Гумилёва', 'ЕНУ', 'https://enu.kz', '+7 7172 70 60 50', 'info@enu.kz', 'г. Астана, ул. Кунаева, 5', 1996, 15, 'Многопрофильный университет с широкой академической и научной деятельностью.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(11, 'Казахский национальный университет имени аль-Фараби', 'КазНУ', 'https://almaty.edu.kz', '+7 727 330 12 34', 'info@kaznu.kz', 'г. Алматы, пр. Аль-Фараби, 71', 1934, 20, 'Многопрофильный университет с разнообразными направлениями и научными исследованиями.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(12, 'Казахская музыкально-образовательная академия имени Абылай хана', 'КазМОУМЯ', 'https://kmoomya.kz', '+7 727 111 22 33', 'info@kmoomya.kz', 'г. Алматы, ул. Тимирязева, 5', 1965, 3, 'Музыкальный университет с направлениями в классическом и современном образовании.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(13, 'AlmaU', 'AlmaU', 'https://almau.kz', '+7 727 123 45 67', 'admissions@almau.kz', 'г. Алматы, ул. Сатпаева, 39', 2000, 10, 'Современный частный университет с широкими направлениями и международным сотрудничеством.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53'),
(14, 'Narxoz University', 'Narxoz', 'https://narxoz.kz', '+7 727 237 77 77', 'info@narxoz.kz', 'г. Алматы, пр. Тимирязева, 64', 1963, 12, 'Многопрофильный университет с экономическим и бизнес-направлением.', 'нет', '2025-12-06 10:08:53', '2025-12-06 10:08:53');

-- --------------------------------------------------------

--
-- Структура таблицы `virtual_tour`
--

CREATE TABLE `virtual_tour` (
  `id` int NOT NULL,
  `university_id` int NOT NULL,
  `tour_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `virtual_tour`
--

INSERT INTO `virtual_tour` (`id`, `university_id`, `tour_link`) VALUES
(1, 1, 'https://abaiuniversity.edu.kz/3d-tour'),
(2, 2, 'https://qyzpu.edu.kz/3d-tour'),
(3, 3, 'https://aiu.edu.kz/3d-tour'),
(4, 4, 'https://okmpu.edu.kz/3d-tour'),
(5, 5, 'https://kbtu.kz/3d-tour'),
(6, 6, 'https://muit.kz/3d-tour'),
(7, 7, 'https://aitu.edu.kz/3d-tour'),
(8, 8, 'https://kgasa.kz/3d-tour'),
(9, 9, 'https://kznui.kz/3d-tour'),
(10, 10, 'https://enu.kz/3d-tour'),
(11, 11, 'https://almaty.edu.kz/3d-tour'),
(12, 12, 'https://kmoomya.kz/3d-tour'),
(13, 13, 'https://almau.kz/3d-tour'),
(14, 14, 'https://narxoz.kz/3d-tour');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `internationalization`
--
ALTER TABLE `internationalization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Индексы таблицы `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `virtual_tour`
--
ALTER TABLE `virtual_tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `financials`
--
ALTER TABLE `financials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `internationalization`
--
ALTER TABLE `internationalization`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `virtual_tour`
--
ALTER TABLE `virtual_tour`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `financials`
--
ALTER TABLE `financials`
  ADD CONSTRAINT `financials_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `internationalization`
--
ALTER TABLE `internationalization`
  ADD CONSTRAINT `internationalization_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `virtual_tour`
--
ALTER TABLE `virtual_tour`
  ADD CONSTRAINT `virtual_tour_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
