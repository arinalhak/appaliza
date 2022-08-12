-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Agu 2022 pada 18.41
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer_score`
--

CREATE TABLE `answer_score` (
  `id_answer_score` bigint(20) UNSIGNED NOT NULL,
  `min_answer_score` double NOT NULL,
  `max_answer_score` double NOT NULL,
  `title_answer_score` varchar(255) NOT NULL,
  `description_answer_score` text NOT NULL,
  `id_question_category_answer_score` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `answer_score`
--

INSERT INTO `answer_score` (`id_answer_score`, `min_answer_score`, `max_answer_score`, `title_answer_score`, `description_answer_score`, `id_question_category_answer_score`) VALUES
(3, 0, 5, 'kurang bagus', 'tingkatkan', 1),
(4, 6, 10, 'sangat bagus', 'anda tidak ada kendala', 1),
(6, 10, 1000, 'Puas', 'Sangat puas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id_config` bigint(20) NOT NULL,
  `name_config` varchar(255) NOT NULL,
  `title_config` varchar(255) NOT NULL,
  `detail_config` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id_config`, `name_config`, `title_config`, `detail_config`) VALUES
(1, 'tutorial', 'Tutorial', 'I\'m currently using the default Authentication of Laravel (php artisan make:auth). But since it\'s very As you can see in the authentication quickstart from the auth and the migrate commands. I made no change to the user migration file or. ... By default, Laravel uses the email field for authentication What if you want to have username to identify a user? It\'s quite simple to change. First, of course, you need to create database migration to Redirecting Unauthenticated Users. When the auth middleware detects an unauthorized user, it will redirect the user to the login named route. You may modify \\n \\n By default, the auth.basic middleware will assume the email column on your users database table is the user\'s \"username\". A Note On FastCGI login username and email laravel 6 , make:auth laravel, Laravel 7 Login ... terdapat pada vendor package laravel/ui, jadi jangan edit atau kesehatan.'),
(2, 'agreement', 'Terms & conditions', 'Redirecting Unauthenticated Users. When the auth middleware detects an unauthorized user, it will redirect the user to the login named route. You may modify By default, the auth.basic middleware will assume the email column on your users database table is the user\'s \"username\".login username and email laravel 6 , make:auth laravel, Laravel 7 Login ... terdapat pada vendor package. \\n \\nAll we need is add a method in app/Http/Controllers/Auth/LoginController.php: /** * Get the login username to be used by the controller.Answers related to “laravel auth change username”. laravel auth · laravel make auth · laravel get auth user id · laravel make:auth · get user auth in You will notice how we are going to rename our name field to firstname and added lastname and username, also we modify file email from mandatory.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `option_answer`
--

CREATE TABLE `option_answer` (
  `id_option_answer` bigint(20) UNSIGNED NOT NULL,
  `id_question_option_answer` bigint(20) NOT NULL,
  `value_option_answer` int(11) NOT NULL,
  `name_option_answer` varchar(255) NOT NULL,
  `detail_option_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `option_answer`
--

INSERT INTO `option_answer` (`id_option_answer`, `id_question_option_answer`, `value_option_answer`, `name_option_answer`, `detail_option_answer`) VALUES
(5, 1, 4, 'Selalu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(6, 1, 3, 'Sering', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(7, 1, 2, 'Jarang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(8, 1, 1, 'Tidak Pernah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(9, 2, 4, 'Selalu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(10, 2, 3, 'Sering', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(11, 2, 2, 'Jarang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(12, 2, 1, 'Tidak Pernah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(13, 3, 4, 'Selalu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(14, 3, 3, 'Sering', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(15, 3, 2, 'Jarang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(16, 3, 1, 'Tidak Pernah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(17, 4, 4, 'Selalu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(18, 4, 3, 'Sering', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(19, 4, 2, 'Jarang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'),
(20, 4, 1, 'Tidak Pernah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id_question` bigint(20) NOT NULL,
  `id_question_question_category` bigint(20) NOT NULL,
  `title_question` varchar(255) NOT NULL,
  `content_question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id_question`, `id_question_question_category`, `title_question`, `content_question`) VALUES
(1, 1, 'Sarapan', 'Apakah anda sarapan setiap hari?'),
(2, 1, 'Periksa', 'Apakah anda periksa kedokter setiap bulan?'),
(3, 1, 'Terkena Penyakit', 'Seberapa sering anda sakit dalam setahun?'),
(4, 1, 'Makan Tempat Umum', 'Apakah anda sering makan di tempat umum?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_category`
--

CREATE TABLE `question_category` (
  `id_question_category` bigint(20) NOT NULL,
  `title_question_category` varchar(255) NOT NULL,
  `subtitle_question_category` varchar(255) NOT NULL,
  `describtion_question_category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `question_category`
--

INSERT INTO `question_category` (`id_question_category`, `title_question_category`, `subtitle_question_category`, `describtion_question_category`) VALUES
(1, 'Survei Kesehatan Karyawan', 'PT Inixindo Jogja', 'Untuk mengetahui persentase kesehatan karyawan'),
(2, 'Survei Kendaraan', 'Karyawan PT Inixindo Jogja', 'Jumlah kendaraan karyawan inixindo jogja'),
(3, 'Survei Peralatan Kerja', 'Peralatan Kerja Kantoran', 'Kelengkapan alat kantor karyawan'),
(4, 'Survei Kebutuhan ABCD', 'Karyawan yang membutuhkan ABCD', 'ABCD merupakan barang yang sangat penting, survei untuk penyediaan barang kantor\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id_token` bigint(20) NOT NULL,
  `token` text NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `token_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id_token`, `token`, `id_user`, `token_create`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTczNCwiZXhwIjoxNjY0NjA1NzM0LCJuYmYiOjE2NTk0MjE3MzQsImp0aSI6Ikx0MHhoSWVSYVJEdFlUMkYiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.oo6-ajipKmqudgdrsH4A0Jp3kTnfW5OZAzAWhgTWHmw', 1022, '2022-08-02 06:28:54'),
(2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTc0MCwiZXhwIjoxNjY0NjA1NzQwLCJuYmYiOjE2NTk0MjE3NDAsImp0aSI6Ik5tY3Awb0haREM2aHZvVG8iLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.QIPWPNonHv5ugwwU_AX-yhoxFsc1iai9YV3ZgampxMo', 1023, '2022-08-02 06:29:00'),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTc2MCwiZXhwIjoxNjY0NjA1NzYwLCJuYmYiOjE2NTk0MjE3NjAsImp0aSI6InJxYVdGc1R2b2wzSVB2Q1MiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.NdhrqK2nRomPUIfZU3i3de2g8KQB0maTKHuLxXYNzcI', 1023, '2022-08-02 06:29:20'),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTc2OCwiZXhwIjoxNjY0NjA1NzY4LCJuYmYiOjE2NTk0MjE3NjgsImp0aSI6Ik9TdzZ1YVFwVkh0R3R5QkkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.9UevvucfcnPKT5FFmZcPnhfKxTR-kuKXvve91kTte94', 1023, '2022-08-02 06:29:28'),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTc4NSwiZXhwIjoxNjY0NjA1Nzg1LCJuYmYiOjE2NTk0MjE3ODUsImp0aSI6IjFDM0hZa00wandGQ3ZqeTIiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rg-Cht63r5KdAqg-lehpBOGsiJmrxgYGDJOknepemqo', 1023, '2022-08-02 06:29:45'),
(6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTgwNCwiZXhwIjoxNjY0NjA1ODA0LCJuYmYiOjE2NTk0MjE4MDQsImp0aSI6ImhXd2swSTBWQ3d4cjV5S2UiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.zfxBpkIvipheMXvCit01omgpL_Opa395v19JMe5jLw4', 1022, '2022-08-02 06:30:04'),
(7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTgxNSwiZXhwIjoxNjY0NjA1ODE1LCJuYmYiOjE2NTk0MjE4MTUsImp0aSI6IlhMWVg1N0U2QUNHMFhuVGUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.zwWeoDlOE6R7rFMmQ0el2-lEycyqrHDitkerJAxaG74', 1022, '2022-08-02 06:30:15'),
(8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTg1MSwiZXhwIjoxNjY0NjA1ODUxLCJuYmYiOjE2NTk0MjE4NTEsImp0aSI6ImY3VkF3S3VTc0lTMVdrRngiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.vkbb1VEPuLM90vbNd9bKrse4KVq-TTfTS6uKTLJqM50', 1022, '2022-08-02 06:30:51'),
(9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTg3MCwiZXhwIjoxNjY0NjA1ODcwLCJuYmYiOjE2NTk0MjE4NzAsImp0aSI6ImZjeTdjZHBrY2tMQmNiaVciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.CNdjbhveI6nQF_3kGwrrU8JV6pz6Z5UcFX7i24BmvQ4', 1022, '2022-08-02 06:31:10'),
(10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMTk4MywiZXhwIjoxNjY0NjA1OTgzLCJuYmYiOjE2NTk0MjE5ODMsImp0aSI6IlFONzFUa0ZUS3FPZjEzN1kiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.l5UT0lbJV8iInNII18krkacXTUKbSO9kx93cvYxDBQ8', 1023, '2022-08-02 06:33:03'),
(11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjA2OSwiZXhwIjoxNjY0NjA2MDY5LCJuYmYiOjE2NTk0MjIwNjksImp0aSI6InM2ckVEQlBTd2VDMTlrN1EiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Kb_VZWunIAsPOHjQ1bdIm0PFS4Xnqs_2Dv_p6jWf5hM', 1022, '2022-08-02 06:34:29'),
(12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjA5NiwiZXhwIjoxNjY0NjA2MDk2LCJuYmYiOjE2NTk0MjIwOTYsImp0aSI6IkptVHlEendCdGxFbjdYUTciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.9hP-NqZNqvJjEd2mIiqGzNmz-Icl_IUSFOQ67N6n3cE', 1022, '2022-08-02 06:34:56'),
(13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjE3OSwiZXhwIjoxNjY0NjA2MTc5LCJuYmYiOjE2NTk0MjIxNzksImp0aSI6IlE3NlVqSzF1U3JRSEMzRjciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.cc45cFMuUP7uRPs_YbiMyi4tq5gpiMlFw0JH-kPZtiA', 1022, '2022-08-02 06:36:19'),
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjI0MCwiZXhwIjoxNjY0NjA2MjQwLCJuYmYiOjE2NTk0MjIyNDAsImp0aSI6ImJxd3IyV3d3Ynk5NXFjcnEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.YXkRHbXPX34I4KoPNQl_ZoOkyMZ_uGrLgsaY90rfPpk', 1022, '2022-08-02 06:37:20'),
(15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjI1NCwiZXhwIjoxNjY0NjA2MjU0LCJuYmYiOjE2NTk0MjIyNTQsImp0aSI6Ik5tQUpna1ZvRmFoS3h0R1ciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4WFQgGxUKlTPNQ-CuC7zCjqUz8VoZDBsP7Q-_sliFc8', 1022, '2022-08-02 06:37:34'),
(16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjI3OCwiZXhwIjoxNjY0NjA2Mjc4LCJuYmYiOjE2NTk0MjIyNzgsImp0aSI6InUzQ2xydHZSZGJDMlpKdXMiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jK4_fUpsp0MKSvnqAag1fOevfjh6DQ4NbIlpapuE6wE', 1023, '2022-08-02 06:37:58'),
(17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjMzOCwiZXhwIjoxNjY0NjA2MzM4LCJuYmYiOjE2NTk0MjIzMzgsImp0aSI6InJIb1kxVnhucWNyVEdoTHAiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.CjRGqKW5POgobd0YPk3lsSvpQ512jof48xS2EuGzQvU', 1022, '2022-08-02 06:38:58'),
(18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjM1OSwiZXhwIjoxNjY0NjA2MzU5LCJuYmYiOjE2NTk0MjIzNTksImp0aSI6IjVGNmNrUGNVTVJaMGRHMUMiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.cNsDXzekeCf1uX1o2keAt-xDyUZrlBu5ZIcrQX0M_JY', 1023, '2022-08-02 06:39:19'),
(19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjM4OCwiZXhwIjoxNjY0NjA2Mzg4LCJuYmYiOjE2NTk0MjIzODgsImp0aSI6Ik8wNU5SV3owdXpmck5FWUEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.McNF5x5Jwt6aZ0vnmMcuCVdq9mqap5NO82KFuyLoa_U', 1022, '2022-08-02 06:39:48'),
(20, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjM5OCwiZXhwIjoxNjY0NjA2Mzk4LCJuYmYiOjE2NTk0MjIzOTgsImp0aSI6InhkQXE0WHBmQ09yNGp2RksiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.ekH-hVe9NuvCVcrbf97Ef5YlJ_l6v2Yl1BCYHwXKQ9Q', 1022, '2022-08-02 06:39:58'),
(21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjQ2MSwiZXhwIjoxNjY0NjA2NDYxLCJuYmYiOjE2NTk0MjI0NjEsImp0aSI6IjBjN056MUhyblR5dWVjalIiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.QgV1zj87LCeE56xiEMJRx1Wp5rdyUtDXH0-tLWeAN2c', 1022, '2022-08-02 06:41:01'),
(22, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjQ3MiwiZXhwIjoxNjY0NjA2NDcyLCJuYmYiOjE2NTk0MjI0NzIsImp0aSI6InJBUmo5OEszUGF6N0lSQ3AiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.u_jJf__JrmrSXWOa3gAPlDiFqXVEu8VkmVXNblgP7_c', 1022, '2022-08-02 06:41:12'),
(23, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjUwOSwiZXhwIjoxNjY0NjA2NTA5LCJuYmYiOjE2NTk0MjI1MDksImp0aSI6Ind3RWxwMDVMbTY1OHRQSGQiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.vVqSrlzIcNd_RTxcrMfhb3k0Gp6_lJ8f-3VtWwAM7KQ', 1023, '2022-08-02 06:41:49'),
(24, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjUxMCwiZXhwIjoxNjY0NjA2NTEwLCJuYmYiOjE2NTk0MjI1MTAsImp0aSI6InVWbnNtQWc1TTlFZ2lVNG4iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.DqQWi3K9prNy-9Y9Zpg5EBG9RiYPNBV6jBGWuidYYpg', 1022, '2022-08-02 06:41:50'),
(25, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjUzNSwiZXhwIjoxNjY0NjA2NTM1LCJuYmYiOjE2NTk0MjI1MzUsImp0aSI6IjgwQkFWUEpCOVpnaDcwMW0iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.6dvaYpotsDeg5rzrJcxsYpl-kEsblJCIiS3cctycS1s', 1022, '2022-08-02 06:42:15'),
(26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMjk2MywiZXhwIjoxNjY0NjA2OTYzLCJuYmYiOjE2NTk0MjI5NjMsImp0aSI6IlNCcHlVbTBqTTVmUVdYWXAiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.qMmX8u-AVmHzzZxDbgTk4RJparJ_3l7IIKaE4DfTioc', 1022, '2022-08-02 06:49:23'),
(27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzIyNiwiZXhwIjoxNjY0NjA3MjI2LCJuYmYiOjE2NTk0MjMyMjYsImp0aSI6ImowMlhIZDJZcVBBTDNUMEMiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.JV3qbhHzWWpGt197jhU1cD_y5PDxx9_CDaruB5PZtnM', 1023, '2022-08-02 06:53:46'),
(28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzI2MywiZXhwIjoxNjY0NjA3MjYzLCJuYmYiOjE2NTk0MjMyNjMsImp0aSI6IlFrQkc2ZVpkbngwQjBRU1IiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.l66yV0j1FYyknOSRpPCG3IJAfJMe6N17lNKwzeNItXA', 1023, '2022-08-02 06:54:23'),
(29, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzI2NCwiZXhwIjoxNjY0NjA3MjY0LCJuYmYiOjE2NTk0MjMyNjQsImp0aSI6IkVKd2s5bFVzeDJmR2NNTDciLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.m1Vl6EOVGO45wNtsA3OZq_vE4HrcGOKWJ2SlpQgv0ow', 1023, '2022-08-02 06:54:24'),
(30, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzI2NCwiZXhwIjoxNjY0NjA3MjY0LCJuYmYiOjE2NTk0MjMyNjQsImp0aSI6IjJyVnlXRmVpMzJFOGlNUUkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.mqA884fox3dnLsN7lZkzDOmjc0xabLfLMXVSRbGqpps', 1023, '2022-08-02 06:54:24'),
(31, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzI2NCwiZXhwIjoxNjY0NjA3MjY0LCJuYmYiOjE2NTk0MjMyNjQsImp0aSI6IjBUNEJRMldwQ2M2bnhQTnIiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0PCcUaqxmQQmOy8-NN47I7GQdS-9jzW0bbySLuh0nJ4', 1023, '2022-08-02 06:54:24'),
(32, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzI4NCwiZXhwIjoxNjY0NjA3Mjg0LCJuYmYiOjE2NTk0MjMyODQsImp0aSI6InZLYldHWGJBd2pGSFpSM3UiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xKzqFnOs5ncZaisQKotS4Oj5zbrBibpH69L0soRJeDQ', 1023, '2022-08-02 06:54:44'),
(33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzMwMiwiZXhwIjoxNjY0NjA3MzAyLCJuYmYiOjE2NTk0MjMzMDIsImp0aSI6ImJZNzFsd3RibDFaNXozUEsiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.MP-DXwEVKvdmm1zl0p8HA9MF15lybQJlsxrfhNbd2iU', 1022, '2022-08-02 06:55:02'),
(34, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzM0MiwiZXhwIjoxNjY0NjA3MzQyLCJuYmYiOjE2NTk0MjMzNDIsImp0aSI6IkNSWkdyY0R2ZzdsdmR5cHgiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.P67JbZp41ChwsMuOFBKh9-VJgOOO2tKs0NMjnhyGX54', 1023, '2022-08-02 06:55:42'),
(35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzM1OSwiZXhwIjoxNjY0NjA3MzU5LCJuYmYiOjE2NTk0MjMzNTksImp0aSI6InhBUTliYmVGY0V2dHR2QzAiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.HmRxCIv_M02aObf6Z7FNReNjOTsuXqL0GFo-bYbUsZY', 1023, '2022-08-02 06:55:59'),
(36, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzQ0MSwiZXhwIjoxNjY0NjA3NDQxLCJuYmYiOjE2NTk0MjM0NDEsImp0aSI6InRXZDNlNTBxa09xb1FYWEwiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.NbtcRu_IViLzMtlyywvaCDnvKjpsxzT1eL_pV7OxMGY', 1022, '2022-08-02 06:57:21'),
(37, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzQ4NiwiZXhwIjoxNjY0NjA3NDg2LCJuYmYiOjE2NTk0MjM0ODYsImp0aSI6IlZya1R1ZnU5Z3NHc2dVdzIiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.OSgRlDPt_1Xaznvdzmd0xs2wsnuHVwPnmpiS05kJrWc', 1022, '2022-08-02 06:58:06'),
(38, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzQ5NCwiZXhwIjoxNjY0NjA3NDk0LCJuYmYiOjE2NTk0MjM0OTQsImp0aSI6IndGdFRUbWRrWnlRcGh4akEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Teap-rhR2ALGBywXO11ZU0b_3ZcDK-LW60kvmJM02HM', 1022, '2022-08-02 06:58:14'),
(39, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzUxMSwiZXhwIjoxNjY0NjA3NTExLCJuYmYiOjE2NTk0MjM1MTEsImp0aSI6IndVM1g3cTU5ZG1GVmY5NTkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.y8Z8G88tiUXHW6GUw19jceq9MXMpwV7liHHPxupNQwg', 1022, '2022-08-02 06:58:31'),
(40, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzY1NSwiZXhwIjoxNjY0NjA3NjU1LCJuYmYiOjE2NTk0MjM2NTUsImp0aSI6IkVlNVVjbnZWeXlXRE5YUkkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.aJmZs_EEzcy-AGJGY5yDGEvKyPwihmYXiHS3sBinmUE', 1022, '2022-08-02 07:00:55'),
(41, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyMzY2MiwiZXhwIjoxNjY0NjA3NjYyLCJuYmYiOjE2NTk0MjM2NjIsImp0aSI6IjkyRjR3UnI1bWYzbm0zTGEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.dqggENdYbwi7Y1yBPZP-_WT47AU5QHIyyj_MjPdK_vc', 1022, '2022-08-02 07:01:02'),
(42, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDA2MCwiZXhwIjoxNjY0NjA4MDYwLCJuYmYiOjE2NTk0MjQwNjAsImp0aSI6InNtV1RvaEVHcE5JVlYyN24iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.1vF91vZiQ8ZAp-1yQzN36bF3cpaGLJmzmcziUGJlcwE', 1022, '2022-08-02 07:07:40'),
(43, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDE0NSwiZXhwIjoxNjY0NjA4MTQ1LCJuYmYiOjE2NTk0MjQxNDUsImp0aSI6IlR2MTBGVTR5c3l6cElOUVkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.QU0aIYUqyT6zT2yn1tvkbhS21vphLqooS2qhMAKhd1U', 1023, '2022-08-02 07:09:05'),
(44, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDE2MiwiZXhwIjoxNjY0NjA4MTYyLCJuYmYiOjE2NTk0MjQxNjIsImp0aSI6IlI5ekg1NklKMk5sVjhldDciLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.NzTkiR-KsYB47IfYkQpK1FddaiLW4bHLeb6zClsiC44', 1023, '2022-08-02 07:09:22'),
(45, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDE3OCwiZXhwIjoxNjY0NjA4MTc4LCJuYmYiOjE2NTk0MjQxNzgsImp0aSI6IkJhV1FsZnN2dHE0all4VE8iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.5aT5a9UvoxOYjwwaQxifvHQsd95B12urh6kHm-I5C48', 1022, '2022-08-02 07:09:38'),
(46, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDM0OSwiZXhwIjoxNjY0NjA4MzQ5LCJuYmYiOjE2NTk0MjQzNDksImp0aSI6IjVPNUZCS0hTRVA1Y3I3d3kiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xKLlpkJRUUDG0aAuUqbt3fnE_rPU1EysPrRzjTbmDUE', 1023, '2022-08-02 07:12:29'),
(47, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDM1MSwiZXhwIjoxNjY0NjA4MzUxLCJuYmYiOjE2NTk0MjQzNTEsImp0aSI6IjE2RHpIQ1VaZHlzcXRRZFUiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0BWJigVE1L59jVGK3MuxL2i-7e-QsgU0smedtoJUISk', 1023, '2022-08-02 07:12:31'),
(48, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDM4NSwiZXhwIjoxNjY0NjA4Mzg1LCJuYmYiOjE2NTk0MjQzODUsImp0aSI6Im1lNGdjYmhaWGY3cnNqMWgiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.SGGYVyqPHYJvIpkcPeQhoWU1eWi5Phm00OvVqG8DrKU', 1023, '2022-08-02 07:13:05'),
(49, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDQyNSwiZXhwIjoxNjY0NjA4NDI1LCJuYmYiOjE2NTk0MjQ0MjUsImp0aSI6Ill5T1pnekNneDRaTVZsSnkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.ymupy-1iNIhkXRTX_0zxSg3Mp_20ipdI3yBqVhzxW1s', 1023, '2022-08-02 07:13:45'),
(50, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNDUwMiwiZXhwIjoxNjY0NjA4NTAyLCJuYmYiOjE2NTk0MjQ1MDIsImp0aSI6ImNLUnl2VHRSOEdHRTRydDMiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.AyYjcda0IKqiGvYZu40QacNJeoSITsmN8clUc4P_3sA', 1023, '2022-08-02 07:15:02'),
(51, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNTUzMSwiZXhwIjoxNjY0NjA5NTMxLCJuYmYiOjE2NTk0MjU1MzEsImp0aSI6IjJHbG43ejhtRUMzZlVoa0YiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.QZkn-j35ey57aQdcJZWpgxh4t_mJdneDZ_Ty3rhu5e0', 1023, '2022-08-02 07:32:11'),
(52, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNTUzNiwiZXhwIjoxNjY0NjA5NTM2LCJuYmYiOjE2NTk0MjU1MzYsImp0aSI6IjE4ZWZCdEl1eFYyQjNzekkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.1bTE0SS9eHRUKfbz6kZQAqYKwOUVkIS40w5bMzCmSf0', 1023, '2022-08-02 07:32:16'),
(53, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNjA0NSwiZXhwIjoxNjY0NjEwMDQ1LCJuYmYiOjE2NTk0MjYwNDUsImp0aSI6IjNFQWJMb1hhTDBqQ2prWXoiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jO5wo3ZakFqJxFM0dtXIfuv_1jBNy4KX7qBbWP31NlA', 1022, '2022-08-02 07:40:45'),
(54, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNjQyNCwiZXhwIjoxNjY0NjEwNDI0LCJuYmYiOjE2NTk0MjY0MjQsImp0aSI6ImwxTnl3Qjk1enhOOGNtcFMiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rMyDYtUlhPN45GWCgpUPxw6DrSMpSEukjzjuQx9EIeU', 1022, '2022-08-02 07:47:04'),
(55, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNjY4NCwiZXhwIjoxNjY0NjEwNjg0LCJuYmYiOjE2NTk0MjY2ODQsImp0aSI6ImVtUVp1RE1sOHZodFQ3UGgiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.upwqO_5PPYEmUxGWfEK2P8lhYNAIdgaeB6WrLSV6Jew', 1022, '2022-08-02 07:51:24'),
(56, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNjcyNiwiZXhwIjoxNjY0NjEwNzI2LCJuYmYiOjE2NTk0MjY3MjYsImp0aSI6Ijcxa0xkckFxSGRmU0pwTHciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.VkjpkUyx5i4gAutIn0aXX1n91pV3lX3P_RIwpmGn7yQ', 1022, '2022-08-02 07:52:06'),
(57, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyNzI1NywiZXhwIjoxNjY0NjExMjU3LCJuYmYiOjE2NTk0MjcyNTcsImp0aSI6Ilc4R3Z1Z2c0WENmSllWZ3QiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.azICjr2-MqBHUl7ov73hNPPus1-4u1CzzdFVx7baNIc', 1022, '2022-08-02 08:00:57'),
(58, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyODEwNywiZXhwIjoxNjY0NjEyMTA3LCJuYmYiOjE2NTk0MjgxMDcsImp0aSI6Ik1ZbWtqTnVZaUloUlVKUUoiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.zv1Vs8b3GXg_lOrGQsyMczv-aLwC4ZnAt6fbRvYjhTg', 1022, '2022-08-02 08:15:07'),
(59, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyODExMiwiZXhwIjoxNjY0NjEyMTEyLCJuYmYiOjE2NTk0MjgxMTIsImp0aSI6Ik5JVXJBdVZFMUJHeXlBZ0MiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.kPN4K-qja716NCcUyYhK58qy0l9B9mXeH3Sbjm9UrSc', 1022, '2022-08-02 08:15:12'),
(60, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyODM0MCwiZXhwIjoxNjY0NjEyMzQwLCJuYmYiOjE2NTk0MjgzNDAsImp0aSI6IkJTbkZ0RzlzQnp1MDRXWGkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4jdw5Y46xGSI5-39l7VuXslfbk_-dW0bSv0dsx3p3uE', 1022, '2022-08-02 08:19:00'),
(61, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyODM2MiwiZXhwIjoxNjY0NjEyMzYyLCJuYmYiOjE2NTk0MjgzNjIsImp0aSI6Ik1uT0Y0RUlOYzlUOHVnMDEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Bm_l6FAEsdjL1Hg7Zat-yGVcYf6EMxbqpaFn4qKLsBA', 1022, '2022-08-02 08:19:22'),
(62, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQyOTUzNywiZXhwIjoxNjY0NjEzNTM3LCJuYmYiOjE2NTk0Mjk1MzcsImp0aSI6IlliUHZZTTdhdXBJWnNmRWkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.EGB5g9KKoTaROAI_bF3kMJM9Z_9_oy1QtXbpZ884xhM', 1022, '2022-08-02 08:38:57'),
(63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQzMDExNiwiZXhwIjoxNjY0NjE0MTE2LCJuYmYiOjE2NTk0MzAxMTYsImp0aSI6IlJrbkkyTURaTnpGaEJwR08iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Iou4rWmPDddRBreawiIe5RyJOGn3ry5Nk_rclRvsUn0', 1022, '2022-08-02 08:48:36'),
(64, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQzMDExNywiZXhwIjoxNjY0NjE0MTE3LCJuYmYiOjE2NTk0MzAxMTcsImp0aSI6IkxnaDJKbk9peEhzZ28ybkUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.R5csCUBCAlCJAGgJh_SZ-pC9iRz8vgIvcdERbFTnj2I', 1022, '2022-08-02 08:48:37'),
(65, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQzMDc2NywiZXhwIjoxNjY0NjE0NzY3LCJuYmYiOjE2NTk0MzA3NjcsImp0aSI6IlRoMnNlVUpWNEhJUnRrcm8iLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0yLgnYn0JUS-TolkSfg-M4xR99RZZc3ppzH7SXYBurw', 1023, '2022-08-02 08:59:27'),
(66, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY1NywiZXhwIjoxNjY0Njc2NjU3LCJuYmYiOjE2NTk0OTI2NTcsImp0aSI6ImttUGluWGNiMXBzbGpUcEEiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.YWXuqQZnZdNBT2687tuU2zb44SVOtDqT0qMud3kWSDY', 1023, '2022-08-03 02:10:58'),
(67, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY1OCwiZXhwIjoxNjY0Njc2NjU4LCJuYmYiOjE2NTk0OTI2NTgsImp0aSI6IjhNWGtLV2I5ekFsRFFPN2wiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.vPX7IIBnaySG2NShErJweLNMaYcDign_S20VyEirU44', 1023, '2022-08-03 02:10:58'),
(68, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY1OCwiZXhwIjoxNjY0Njc2NjU4LCJuYmYiOjE2NTk0OTI2NTgsImp0aSI6IkVWTWJleEdNb0xsYms2Y0EiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.HyOqxrZMfn6lNl3NAVdHum0uSFmVSso7UCRU3qhgNpI', 1023, '2022-08-03 02:10:58'),
(69, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY1OSwiZXhwIjoxNjY0Njc2NjU5LCJuYmYiOjE2NTk0OTI2NTksImp0aSI6IlJwajM5UFJ2NmhIRVVOaEYiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.DOEI9coO54v1qSCLv-DEvCIj0w1XxKE1TvfEq78Ty_0', 1023, '2022-08-03 02:10:59'),
(70, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY2MCwiZXhwIjoxNjY0Njc2NjYwLCJuYmYiOjE2NTk0OTI2NjAsImp0aSI6IldoQVhMTjZEcGhCcTFqTFoiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.R_zNhmkcpzgP9-EVUYEjIYYVkbniZBYdVEvYPXalbV8', 1023, '2022-08-03 02:11:00'),
(71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjY2MCwiZXhwIjoxNjY0Njc2NjYwLCJuYmYiOjE2NTk0OTI2NjAsImp0aSI6IkdKeTc2S2I1ZXlvclhidGwiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.a46MxxrXkQ_S5xzktNeuAQZuGLCrs-A64kdVSGxVI0U', 1023, '2022-08-03 02:11:00'),
(72, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjgwMSwiZXhwIjoxNjY0Njc2ODAxLCJuYmYiOjE2NTk0OTI4MDEsImp0aSI6IkVDZEUxa1d0VVZRVDFCQ28iLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.ajkB9is1gMjskkRHH3RGXo6E8x3UiO-2uNzcrLaD5LQ', 1022, '2022-08-03 02:13:21'),
(73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MjgzNiwiZXhwIjoxNjY0Njc2ODM2LCJuYmYiOjE2NTk0OTI4MzYsImp0aSI6InlXN0UwazYwNkZyR1hwWFciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Qg90paLF204O6UL2uoTuxSbrW63dWN_Ov7I4gfzuUAU', 1022, '2022-08-03 02:13:56'),
(74, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MzQzMCwiZXhwIjoxNjY0Njc3NDMwLCJuYmYiOjE2NTk0OTM0MzAsImp0aSI6InRMVGNCRVpma1VsREcwVjAiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.g6ZOgCJ_pd3YB2la9tRWJV6hTuXDJYIm_x3HxFhGSdI', 1022, '2022-08-03 02:23:50'),
(75, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5MzY2MSwiZXhwIjoxNjY0Njc3NjYxLCJuYmYiOjE2NTk0OTM2NjEsImp0aSI6IklnekhoWks0b0RHQ29hRGkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.kE-8noFE8KfG4rs5B99BBo3du5eXH_uAQAPDeRfdCRA', 1022, '2022-08-03 02:27:41'),
(76, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5Mzk3MCwiZXhwIjoxNjY0Njc3OTcwLCJuYmYiOjE2NTk0OTM5NzAsImp0aSI6IlFqM085SkYzQ3lUeTk2U1MiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.89tRgR_8m396TCQ__YgHmo0V5H6fEMX1jYb8q38yHl8', 1023, '2022-08-03 02:32:50'),
(77, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NDAwNywiZXhwIjoxNjY0Njc4MDA3LCJuYmYiOjE2NTk0OTQwMDcsImp0aSI6IjBLdHdFcUJ3cUtobzFyS3MiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.OCalF-lFPwlC4_XreuMUYOcQGlWJxYvuvswhfBH8_eo', 1023, '2022-08-03 02:33:27'),
(78, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NDAwNywiZXhwIjoxNjY0Njc4MDA3LCJuYmYiOjE2NTk0OTQwMDcsImp0aSI6Ikc5eGZkUnVDeDR2TWx3QmIiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jUvRmBOdxQbtuYrcGQzx0URY7r9rPABmbHzXEqbjAv4', 1023, '2022-08-03 02:33:27'),
(79, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NjM3OSwiZXhwIjoxNjY0NjgwMzc5LCJuYmYiOjE2NTk0OTYzNzksImp0aSI6Im9jMVdWVkdlR1hsSFJmUlUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ._T6pPuebLkYxkCWlCgaj13rz9dxpopKePQmsMJ3MdyE', 1022, '2022-08-03 03:12:59'),
(80, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NjQ0NiwiZXhwIjoxNjY0NjgwNDQ2LCJuYmYiOjE2NTk0OTY0NDYsImp0aSI6ImZSeENYNEtKS3lKYVRQVlIiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.LZYIEPr0j32pyhG8IHBBK0bEtpaEef75qK8WigPiY_k', 1022, '2022-08-03 03:14:06'),
(81, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NjU3MywiZXhwIjoxNjY0NjgwNTczLCJuYmYiOjE2NTk0OTY1NzMsImp0aSI6IjJKdXNjbFpnRmFwNzRRTlIiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.96HNVe8z67EO_f0Vhg96WPcmzC0oyqOTguKoUyMGZOw', 1022, '2022-08-03 03:16:13'),
(82, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5NzQ5MywiZXhwIjoxNjY0NjgxNDkzLCJuYmYiOjE2NTk0OTc0OTMsImp0aSI6IjdnTG5MenBRcHVFekc4MTYiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.RVw8fKgged2XQO7bNGdAs8GF7KDl6HLQsntEwdrW3AY', 1022, '2022-08-03 03:31:33'),
(83, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTQ5Nzc1NSwiZXhwIjoxNjY0NjgxNzU1LCJuYmYiOjE2NTk0OTc3NTUsImp0aSI6IkJuc1RTZnBOR2gwUTdCTnkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.GI3At1Bl5rDNsg5bDEFas2HwhzxJxWejRFxK1-Z1z70', 1023, '2022-08-03 03:35:55'),
(84, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMTQ3NCwiZXhwIjoxNjY0Njg1NDc0LCJuYmYiOjE2NTk1MDE0NzQsImp0aSI6Im52YTNYVFE1MjVXQ3FuV0kiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.NpYT-vIr7AESFAf1gFZ3AZt_53SkKpgfpDpiCTRKlqw', 1023, '2022-08-03 04:37:54'),
(85, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMTQ3NCwiZXhwIjoxNjY0Njg1NDc0LCJuYmYiOjE2NTk1MDE0NzQsImp0aSI6IklIZzZiZm52dk5mSENRTVciLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.6tdy-tOsS2OVDAdNK8IAGze6-6y8PYS9u5aHRSSM-kA', 1023, '2022-08-03 04:37:54'),
(86, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMjU4OCwiZXhwIjoxNjY0Njg2NTg4LCJuYmYiOjE2NTk1MDI1ODgsImp0aSI6InJYS3J3RTlIQ3VlOHhhT2QiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.wN-AVw0yF0Kr8oaI2juXaYGyagttpuZZo7qT8hbL7Zo', 1023, '2022-08-03 04:56:28'),
(87, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMjkyMCwiZXhwIjoxNjY0Njg2OTIwLCJuYmYiOjE2NTk1MDI5MjAsImp0aSI6IkR2TmI0VmpEMXlqZ1JHcFIiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.O789AU4AFpvAzg_deB8dqIDy8WSMSy2z3YA1vhUAUjc', 1022, '2022-08-03 05:02:00'),
(88, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMjkzNywiZXhwIjoxNjY0Njg2OTM3LCJuYmYiOjE2NTk1MDI5MzcsImp0aSI6IklVVFQ2R0JDeTFZQ2Q2MkUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.sT42Vt3I-YlUMLYiyN9JllV3cOP7WKHQcekc8mGwtoc', 1022, '2022-08-03 05:02:17'),
(89, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMzgyMSwiZXhwIjoxNjY0Njg3ODIxLCJuYmYiOjE2NTk1MDM4MjEsImp0aSI6ImtTZEVVZDU2UDNmaG53ZFYiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.mM1sahkMzveO79pshPPQMxrVAHS2oQks2Zl43hc65PY', 1022, '2022-08-03 05:17:01'),
(90, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMzgyMiwiZXhwIjoxNjY0Njg3ODIyLCJuYmYiOjE2NTk1MDM4MjIsImp0aSI6InVQcklRT3VMOVBpUm9LZmYiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xLscP5Mq6vl5ACZiTGrO52MjPKGtBfiObzSDgAW-MPk', 1022, '2022-08-03 05:17:02'),
(91, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMzgyMywiZXhwIjoxNjY0Njg3ODIzLCJuYmYiOjE2NTk1MDM4MjMsImp0aSI6Ill1ODR5VWo4bXF6dHZrUkEiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jlYBCTJli9hve6bFlysVVisyiA0qDBgFRx0A9D9iMBA', 1022, '2022-08-03 05:17:03'),
(92, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwMzgyOSwiZXhwIjoxNjY0Njg3ODI5LCJuYmYiOjE2NTk1MDM4MjksImp0aSI6IkRnQjVrcnMxVTlpRGF0UkYiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.9CbY_SiU0UD3lCDd-zxXgOZnA5yMqvtXuwb63O8ieuw', 1022, '2022-08-03 05:17:09'),
(93, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwNTI2MiwiZXhwIjoxNjY0Njg5MjYyLCJuYmYiOjE2NTk1MDUyNjIsImp0aSI6IjRpaHRoQnRXVklLTmo4YlgiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.96259-Oteaw6RM2VpGLnwQYhcKibycY2IRxK6AdiKxU', 1022, '2022-08-03 05:41:02'),
(94, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwNTMyMSwiZXhwIjoxNjY0Njg5MzIxLCJuYmYiOjE2NTk1MDUzMjEsImp0aSI6Ik1SYUdCSlhIWWhERnd0RGoiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.En63-v3tjSg1QAHcbT24SjUIAwNuxhBmBqh6CWn1J98', 1022, '2022-08-03 05:42:01'),
(95, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUwNTUyMCwiZXhwIjoxNjY0Njg5NTIwLCJuYmYiOjE2NTk1MDU1MjAsImp0aSI6IjNGSE9MZWpsTGxsQU13RGsiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.NBBVhGxWgJQFejKFmfFTWt5NELnDwi-Yw8buOFPQQCo', 1022, '2022-08-03 05:45:20'),
(96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMTQ2MCwiZXhwIjoxNjY0Njk1NDYwLCJuYmYiOjE2NTk1MTE0NjAsImp0aSI6IlNrYUsxNTlqUE1ta0RJWkUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.kXHWTzadF_bEK0qAfTCy77hL3rVX5TDsCxQv9r6-q7Q', 1022, '2022-08-03 07:24:20'),
(97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMTQ3NiwiZXhwIjoxNjY0Njk1NDc2LCJuYmYiOjE2NTk1MTE0NzYsImp0aSI6Imx4c0ltZEtTWnBmNFhyV1EiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Zb8vVH-pTDYKKKX61URmVQVodx6wK7SG76BdEvlB260', 1022, '2022-08-03 07:24:36'),
(98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMTQ5MywiZXhwIjoxNjY0Njk1NDkzLCJuYmYiOjE2NTk1MTE0OTMsImp0aSI6Imd0SG5Ya25aWEMzZGNqajkiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.TcR-r132Fl42oGNw1IANduKzyoAO8mkFyfTBRwgc_Ms', 1022, '2022-08-03 07:24:53'),
(99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMjUzMSwiZXhwIjoxNjY0Njk2NTMxLCJuYmYiOjE2NTk1MTI1MzEsImp0aSI6IlFVcHdtQzNsc01mSnhsTHMiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.5z9j9h6NRF27IUXUNOiy6jjuF7v8dz6W_hZ4QaIJdP4', 1023, '2022-08-03 07:42:11'),
(100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMjc5NiwiZXhwIjoxNjY0Njk2Nzk2LCJuYmYiOjE2NTk1MTI3OTYsImp0aSI6InkxellJc2tKU2VQMGgyejUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.EA7E2279lv8fa7MuX-OcTdvjNK3R8Yk9FpBwD1YPNPQ', 1022, '2022-08-03 07:46:36'),
(101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxMjgxMiwiZXhwIjoxNjY0Njk2ODEyLCJuYmYiOjE2NTk1MTI4MTIsImp0aSI6IlBPdmdnbXF5MGVHdjh3TFUiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.O-u6ZvRUukoRtPIQlLYBCvPtyHkgSYSdQk_iHOfTCNc', 1023, '2022-08-03 07:46:52'),
(102, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDIxNywiZXhwIjoxNjY0Njk4MjE3LCJuYmYiOjE2NTk1MTQyMTcsImp0aSI6Ik40bEg0WnNzNUdXR0NLT2QiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.JLNYbL73pw4lKfrVWw5f6p4VRSRPCpmnknEoH1YBu7U', 1023, '2022-08-03 08:10:17'),
(103, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDI1MSwiZXhwIjoxNjY0Njk4MjUxLCJuYmYiOjE2NTk1MTQyNTEsImp0aSI6InFCUWZDN0pXZm0wRUdCdUciLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Ws2sJw7tJYOxQ4h2PN84CyVyI_x7hvR4qYaoRSiYSPM', 1023, '2022-08-03 08:10:51'),
(104, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDI1OCwiZXhwIjoxNjY0Njk4MjU4LCJuYmYiOjE2NTk1MTQyNTgsImp0aSI6ImhzQ0U4aVl5NVU0amNJdkEiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.nPgG6hpbd1_qIPe8IV38F5_haRh8iL0yBYTG3X4CKow', 1023, '2022-08-03 08:10:58'),
(105, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDMwMCwiZXhwIjoxNjY0Njk4MzAwLCJuYmYiOjE2NTk1MTQzMDAsImp0aSI6ImloSWIxSzNhcGVOeFZ6SlQiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Jt0rFBTfIRiACCYsQMtm-4-LWelaOMJUG5QvjS60Utc', 1023, '2022-08-03 08:11:40'),
(106, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDMxOSwiZXhwIjoxNjY0Njk4MzE5LCJuYmYiOjE2NTk1MTQzMTksImp0aSI6ImRFbXNaRVBxN1pJOXZpTUwiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4V0no--pSSXWyZy1zyftu_puxHzsmgnPVqY3VxxQTH0', 1023, '2022-08-03 08:11:59'),
(107, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDM1MSwiZXhwIjoxNjY0Njk4MzUxLCJuYmYiOjE2NTk1MTQzNTEsImp0aSI6Ikd6cld1VXZGMTM1WXZKTTUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.qnt-y_gs-Rb65L5zGI83S9-xw1xcpLMO-K94JZkK57M', 1022, '2022-08-03 08:12:31'),
(108, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDM1NywiZXhwIjoxNjY0Njk4MzU3LCJuYmYiOjE2NTk1MTQzNTcsImp0aSI6IjZwRFNMQU44NmRZUHN3bjkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.FdMto7D7zc81PwXAlk2AK4jwbLyZen9kzwt6GBicGf4', 1023, '2022-08-03 08:12:37'),
(109, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDM5NCwiZXhwIjoxNjY0Njk4Mzk0LCJuYmYiOjE2NTk1MTQzOTQsImp0aSI6InBIV2hLQTdUU2RzcFQ4b0oiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.vvpkGr7qquBcovoQA_K65E9UVJ3WXUf-qaryhAY7SEU', 1022, '2022-08-03 08:13:14'),
(110, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDQyMSwiZXhwIjoxNjY0Njk4NDIxLCJuYmYiOjE2NTk1MTQ0MjEsImp0aSI6Im9hMWg5ODNpOHFTZ1pIR2oiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.O1v98-IDtHPJNy2LAKvSrlvhNTy12Ltz-8xbncvpuwA', 1023, '2022-08-03 08:13:41'),
(111, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDQyMiwiZXhwIjoxNjY0Njk4NDIyLCJuYmYiOjE2NTk1MTQ0MjIsImp0aSI6ImJlYlhKaURrU2pnajZ1VzkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.VefQZZBDaCo_ig2BSYVBDQg-KQf_mffSI760TpmPRv0', 1023, '2022-08-03 08:13:42'),
(112, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDU0NCwiZXhwIjoxNjY0Njk4NTQ0LCJuYmYiOjE2NTk1MTQ1NDQsImp0aSI6InNkZngzd2JlSHFXR1hqUm8iLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.3xyRrI0f150DcJ02FAEr2JV5-jF1u5dR0ESmdzJ0BW0', 1023, '2022-08-03 08:15:44'),
(113, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDU0NSwiZXhwIjoxNjY0Njk4NTQ1LCJuYmYiOjE2NTk1MTQ1NDUsImp0aSI6IjM4SkoyMFh1RVlZeElpSTUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.dDqfE-EjyPPKvo6zlETkWtmk1-OFQGPPozKyfgyS3j0', 1022, '2022-08-03 08:15:45'),
(114, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDY0MCwiZXhwIjoxNjY0Njk4NjQwLCJuYmYiOjE2NTk1MTQ2NDAsImp0aSI6IktKWGR0d2l2WVlmSjBsTFIiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.MLpNcLO8dhSTRqrEBEB3vNb9w68W8SURa9UiaAFOhsU', 1023, '2022-08-03 08:17:20'),
(115, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDc0MCwiZXhwIjoxNjY0Njk4NzQwLCJuYmYiOjE2NTk1MTQ3NDAsImp0aSI6IkM1aGRwUTJnc1ZZMkRXeHAiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.eIZ824aO84Mo3s5Css21CDNzb0-UUTkeXI_iob8aXr8', 1022, '2022-08-03 08:19:00'),
(116, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDc0OCwiZXhwIjoxNjY0Njk4NzQ4LCJuYmYiOjE2NTk1MTQ3NDgsImp0aSI6IllFNVRDUjI4ckFMT1hucHUiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jmU05Isjr0mWaam71GguUpAeG838sM686oV2E7BCQmw', 1022, '2022-08-03 08:19:09'),
(117, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDgzNywiZXhwIjoxNjY0Njk4ODM3LCJuYmYiOjE2NTk1MTQ4MzcsImp0aSI6IlVWUWJqTE8yS01aME5CYloiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.5PsGjLaihlGKZAj-kIXuxzxsecNJFx-2I0ZnQHCSBD0', 1023, '2022-08-03 08:20:37'),
(118, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDgzOSwiZXhwIjoxNjY0Njk4ODM5LCJuYmYiOjE2NTk1MTQ4MzksImp0aSI6Im1Ga0pBSnpoMHNZS0ppRTciLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.VM84XHbiTMTROWmlL_gfYMjXNsme4uqHL3VTpPXB7dM', 1022, '2022-08-03 08:20:39'),
(119, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTUxNDg5MCwiZXhwIjoxNjY0Njk4ODkwLCJuYmYiOjE2NTk1MTQ4OTAsImp0aSI6IjZGRlFxSlFJaFRLcGxXQ3EiLCJzdWIiOjEwMjIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.OALwiZURMve65YJxNr1iUPYGNIxafLMmTFsAYYtqmSo', 1022, '2022-08-03 08:21:30'),
(120, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwNi4xMTE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTY1OTU4MDYzNywiZXhwIjoxNjY0NzY0NjM3LCJuYmYiOjE2NTk1ODA2MzcsImp0aSI6InZrVzVGTE9lNnVZbVdRUUkiLCJzdWIiOjEwMjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.c4YD9VzwmPebkc_MtOQjdA8l1KMWSxt9CvK0wGhRJDc', 1023, '2022-08-04 02:37:17'),
(121, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjkzLjk3OjgwMDBcL2FwaVwvbG9naW4iLCJpYXQiOjE2NTk5NzU1NzUsImV4cCI6MTY2NTE1OTU3NSwibmJmIjoxNjU5OTc1NTc1LCJqdGkiOiJrczZMMUtyd3VWRTE5WWNPIiwic3ViIjoxMDIyLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.vH4bOqtiLQcSohd4Nqo0CDQhBTdC4t-0QWsDpELrMuw', 1022, '2022-08-08 16:19:36'),
(122, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjkzLjk3OjgwMDBcL2FwaVwvbG9naW4iLCJpYXQiOjE2NTk5NzU4MzksImV4cCI6MTY2NTE1OTgzOSwibmJmIjoxNjU5OTc1ODM5LCJqdGkiOiJYYVZjNnBEd2d2QVQ5VnYyIiwic3ViIjoxMDIyLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.5zRULRM0ErVL4F1jxVOsn1nEOqKzzTJQHIvYcQizkqM', 1022, '2022-08-08 16:23:59'),
(123, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjkzLjk3OjgwMDBcL2FwaVwvbG9naW4iLCJpYXQiOjE2NTk5NzU4NDAsImV4cCI6MTY2NTE1OTg0MCwibmJmIjoxNjU5OTc1ODQwLCJqdGkiOiJKOGRBVVgyTGdJalNhVzVkIiwic3ViIjoxMDIyLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.guSXdMB9GOl3n7wG93yVLwOxB-RNXeGYbS5N1tiUA6w', 1022, '2022-08-08 16:24:00'),
(124, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjkzLjk3OjgwMDBcL2FwaVwvbG9naW4iLCJpYXQiOjE2NTk5ODExMDUsImV4cCI6MTY2NTE2NTEwNSwibmJmIjoxNjU5OTgxMTA1LCJqdGkiOiJyaVlheGF2MlViSHJGcmNIIiwic3ViIjoxMDI0LCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.4kefQE8-7_-ZjBR7oTI7oD_YYJCqX-r6olX_ryIZgIA', 1024, '2022-08-08 17:51:45'),
(125, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMTg3MDM1LCJleHAiOjE2NjUzNzEwMzUsIm5iZiI6MTY2MDE4NzAzNSwianRpIjoiaUxxbTM0VGJqbkhWQ3hiYyIsInN1YiI6MTAyMywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.Xn1y50sOBMzerPMmpvCrQ5t5lkurzfbAXJl3hKlgsvw', 1023, '2022-08-11 03:03:56'),
(126, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMTg3MzI0LCJleHAiOjE2NjUzNzEzMjQsIm5iZiI6MTY2MDE4NzMyNCwianRpIjoiSEFyc0NJWVNrcEE1aUxScyIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.UOCMPY3fGt8hsqB9WsL7ReM-A8UUUKB4oI-4h7oqVec', 1022, '2022-08-11 03:08:44'),
(127, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMTg3NDY2LCJleHAiOjE2NjUzNzE0NjYsIm5iZiI6MTY2MDE4NzQ2NiwianRpIjoicVQwSFZ0MnR2bU9FSnZPbSIsInN1YiI6MTAyMywicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.GVxX4-8X3KHo42_igjkZ9dFTQNUYuWioTxx6fiRg4E0', 1023, '2022-08-11 03:11:06'),
(128, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjE0NDA2LCJleHAiOjE2NjUzOTg0MDYsIm5iZiI6MTY2MDIxNDQwNiwianRpIjoidlJQQmdmZzdUSEJiMFF1RyIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.0Re6HTTwCRxTd85Vb4a9icFOyUd6NMxRfXLbZlKuSIw', 1022, '2022-08-11 10:40:07'),
(129, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjE0NTcxLCJleHAiOjE2NjUzOTg1NzEsIm5iZiI6MTY2MDIxNDU3MSwianRpIjoibVFyOXhsMFdMZ0VzY0ZCUSIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.utPHQeFXU6Z2uMT3Qnp2OnqVmVY_C2KHUagvekHdNiY', 1022, '2022-08-11 10:42:51'),
(130, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjE5OTUxLCJleHAiOjE2NjU0MDM5NTEsIm5iZiI6MTY2MDIxOTk1MSwianRpIjoiNHhBZ3N3Q0J0Mmx0MnJzVCIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.Dlx9oruH9KbfYtGFA00XFeNiU4B_mmjb8crBTL75Z1E', 1022, '2022-08-11 12:12:31'),
(131, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjIyNzQ5LCJleHAiOjE2NjU0MDY3NDksIm5iZiI6MTY2MDIyMjc0OSwianRpIjoiWlVycTZadldnSFFxMFFtWSIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.qKo7d1_wx8MQavVpKOL-h4NOFxNWlwyleR4XhVPjyCw', 1022, '2022-08-11 12:59:09'),
(132, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjczMTY0LCJleHAiOjE2NjU0NTcxNjQsIm5iZiI6MTY2MDI3MzE2NSwianRpIjoicXVqRHFncHh6VDU2elZJNyIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.zVcy2wPP6QWJa_n27DcGmq9cXAU-5Ee2dxLpNm_wKtA', 1022, '2022-08-12 02:59:25'),
(133, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjk4Mjc4LCJleHAiOjE2NjU0ODIyNzgsIm5iZiI6MTY2MDI5ODI3OCwianRpIjoicmhPWVJNdmZjQnFzeUppTCIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.i_asCE0LNkidlNg6QTzHbl5c93OMEcbUcTHU4UDjfdQ', 1022, '2022-08-12 09:57:58'),
(134, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjk4MjgwLCJleHAiOjE2NjU0ODIyODAsIm5iZiI6MTY2MDI5ODI4MCwianRpIjoiamZ2SzlyWjNQcWU1eElCciIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.AcczTh4gUnlO7GLnE5OMNVcCjUApxYFwug41pdFAgHc', 1022, '2022-08-12 09:58:00'),
(135, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjk4MjgwLCJleHAiOjE2NjU0ODIyODAsIm5iZiI6MTY2MDI5ODI4MCwianRpIjoiTUNKdUREa0tUM2NXZkYxZSIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.7rsA-ASlKFcPi3UX0d6W6aTxe-pNud_jtyEF0MAmKXM', 1022, '2022-08-12 09:58:00');
INSERT INTO `token` (`id_token`, `token`, `id_user`, `token_create`) VALUES
(136, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEwLjIyMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMjk5MjkyLCJleHAiOjE2NjU0ODMyOTIsIm5iZiI6MTY2MDI5OTI5MiwianRpIjoiMlJGaDl0SXhJM0RKY1EyTiIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.swBU8OyLy48T3xzBIKpKWxVZpr2Av0p_dyfGVo0FUwU', 1022, '2022-08-12 10:14:52'),
(137, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4MzI1LCJleHAiOjE2NjU1MDIzMjUsIm5iZiI6MTY2MDMxODMyNSwianRpIjoiQ0pWTmowUGdOTUtqZ3FZdyIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.FboXHq_49xxbn1orYXs9UZlWq2TDunT9QozJfxWmj4I', 1022, '2022-08-12 15:32:05'),
(138, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4MzQwLCJleHAiOjE2NjU1MDIzNDAsIm5iZiI6MTY2MDMxODM0MCwianRpIjoidW1FaDAwaGduRHI3STY3NSIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.WL5P3JlCf8_hCg0jIg57BqE3HEmIwz3RdT-WHnBbmj8', 1, '2022-08-12 15:32:20'),
(139, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4MzU5LCJleHAiOjE2NjU1MDIzNTksIm5iZiI6MTY2MDMxODM1OSwianRpIjoiYjF1dUtjSjFaMkNYaFRJUyIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.ER7GdqHkyP84T5juKRQFbj9AOoRV2oZxWMXXWU2DwJg', 1, '2022-08-12 15:32:39'),
(140, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4MzY4LCJleHAiOjE2NjU1MDIzNjgsIm5iZiI6MTY2MDMxODM2OCwianRpIjoibDVHM1R4b3NyRThPNmZkcSIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.TFA03dsk2cHEuBwzRaoz16k85SesoBW9nm-Prk_FSro', 1, '2022-08-12 15:32:48'),
(141, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4NDI0LCJleHAiOjE2NjU1MDI0MjQsIm5iZiI6MTY2MDMxODQyNCwianRpIjoiVUprQ0dWZnMzVlVTbHJPdCIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.2rMv7vprUNRZSbbIGGMPyPTrCd857LlbSe1qHYYECGg', 1, '2022-08-12 15:33:44'),
(142, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4NDU0LCJleHAiOjE2NjU1MDI0NTQsIm5iZiI6MTY2MDMxODQ1NCwianRpIjoiZE1hSVhSTEhLUVkzQnNYdyIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.gbkMtFBE-AE_b8g1x7PjKvihAlanu0leqTxt8eYtRwk', 1022, '2022-08-12 15:34:14'),
(143, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzE4NDY4LCJleHAiOjE2NjU1MDI0NjgsIm5iZiI6MTY2MDMxODQ2OCwianRpIjoiV0V3djFpaHl5Y2t1eEVXUiIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.I3FTVsr2_yeNB8Qpta3NS2bwVI45DbDi0wgR2_vQ-Ic', 1022, '2022-08-12 15:34:28'),
(144, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjEyMi45Nzo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjYwMzIxNTkwLCJleHAiOjE2NjU1MDU1OTAsIm5iZiI6MTY2MDMyMTU5MCwianRpIjoiRmVIcTRVMWFFeFRLNWRvNSIsInN1YiI6MTAyMiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.byiUhlzD050mz4FOduntGW3hklQNP4TA4zz7Vmwjqo8', 1022, '2022-08-12 16:26:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email_verified_at`, `telepon`, `password`, `status`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin app', 'a@a.a', '2022-08-05 10:09:39', '', '$2y$10$GZRwWXy9LCkeU5adpESIFumtLtg0ibGMyd765qLY9eLD6IbIvtqLm', '1', 'vqMCjVeOO67vtLpKUNCD7vgtinmYVy11eyuRYgTW8x0SryghL5SlFRH12G6Q', 'admin', '2022-08-12 14:34:09', '2022-08-15 17:00:00'),
(1000, 'ab', 'a@a.aa', '2022-02-24 16:53:01', '102398123', '$2y$10$ZCsl6g4LUlkyqgcX5yAQk.n8TeuLS3Gvi3IutGm0Fpcslme0fttYO', '1', 'iKr1fwgNFO', 'user', '2022-04-08 17:00:00', '2022-04-19 17:04:40'),
(1001, 'Joannie King', 'philpert@example.net', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'ImEulNPp02', 'user', '2022-04-08 17:00:00', NULL),
(1002, 'Osborne Wisozk', 'sporer.mia@example.com', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', '45OdDCBSBY', 'user', '2022-04-08 17:00:00', NULL),
(1003, 'Hollis Grant', 'iklein@example.org', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'drzqLZbXH5', 'user', '2022-04-08 17:00:00', NULL),
(1004, 'Prof. Arch O\'Hara', 'keeley.dietrich@example.com', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'Tzdj0dTDyZ', 'user', '2022-04-08 17:00:00', NULL),
(1005, 'Brandy Cruickshank', 'xgrady@example.org', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'RGT6vmTt1O', 'user', '2022-04-08 17:00:00', NULL),
(1006, 'Efrain Pacocha', 'oaufderhar@example.org', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', '6zuP4kMZyI', 'user', '2022-04-08 17:00:00', NULL),
(1007, 'Oswald Trantow V', 'taurean89@example.org', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'Dwo1pLGQk6', 'user', '2022-04-08 17:00:00', NULL),
(1008, 'Kenya Little', 'xzavier.reichel@example.net', '2022-02-24 16:53:01', '', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', 'C7oBb5WwFE', 'user', '2022-04-08 17:00:00', NULL),
(1009, 'Joanne Hilpert', 'user@gmail.com', '2022-02-24 16:53:01', '', '$2y$10$78P8dT2Z3Ud6zaHOiXgi5ea2JTFv/L4NG89.JXX4ctO9jvsQvc/tW', '0', 'XbNfQX5PmN', 'user', '2022-04-08 17:00:00', NULL),
(1010, 'jono', 'user@g.c', NULL, '', '$2y$10$.rCh.1tjS3tA9d6DLI/HNultz.E8wIDwyqRgf6m2dFSvBfZAZE7Me', '0', NULL, 'user', '2022-04-08 17:00:00', NULL),
(1012, 'asd', 'fdr00zenc@gmail.com', NULL, '', '$2y$10$HapIC8Fyue8uS/khidv8t.DGj2LGJweTFtfPxHvCiBWBUzcOpQkVG', '0', NULL, 'user', '2022-04-08 17:00:00', NULL),
(1022, 'aa', 'u@g.c', NULL, '123123123', '$2y$10$GZRwWXy9LCkeU5adpESIFumtLtg0ibGMyd765qLY9eLD6IbIvtqLm', '0', NULL, 'user', '2022-04-08 17:00:00', '2022-04-27 07:32:49'),
(1023, 'new user access', 'u2@gmail.com', NULL, '09812731823', '$2y$10$GZRwWXy9LCkeU5adpESIFumtLtg0ibGMyd765qLY9eLD6IbIvtqLm', '0', NULL, 'user', '2022-04-08 17:00:00', '2022-04-27 22:12:51'),
(1024, 'u3 user', 'u3@gmail.com', NULL, '0812673123', '$2y$10$GZRwWXy9LCkeU5adpESIFumtLtg0ibGMyd765qLY9eLD6IbIvtqLm', '0', NULL, 'user', '2022-05-05 22:25:43', '2022-05-05 22:25:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_answer`
--

CREATE TABLE `user_answer` (
  `id_user_answer` bigint(20) UNSIGNED NOT NULL,
  `id_user_user_answer` bigint(20) UNSIGNED NOT NULL,
  `created_at_user_answer` timestamp NULL DEFAULT NULL,
  `updated_at_user_answer` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_answer`
--

INSERT INTO `user_answer` (`id_user_answer`, `id_user_user_answer`, `created_at_user_answer`, `updated_at_user_answer`) VALUES
(43, 1022, '2022-08-04 02:54:46', '2022-08-04 02:54:46'),
(44, 1022, '2022-08-08 16:44:05', '2022-08-08 16:44:05'),
(45, 1022, '2022-08-08 16:50:40', '2022-08-08 16:50:40'),
(46, 1024, '2022-08-08 17:53:23', '2022-08-08 17:53:23'),
(47, 1024, '2022-08-08 17:54:45', '2022-08-08 17:54:45'),
(48, 1023, '2022-08-11 03:05:45', '2022-08-11 03:05:45'),
(49, 1023, '2022-08-11 04:01:34', '2022-08-11 04:01:34'),
(50, 1023, '2022-08-11 04:02:09', '2022-08-11 04:02:09'),
(51, 1022, '2022-08-11 12:13:03', '2022-08-11 12:13:03'),
(52, 1022, '2022-08-11 13:00:02', '2022-08-11 13:00:02'),
(53, 1022, '2022-08-11 13:01:51', '2022-08-11 13:01:51'),
(54, 1022, '2022-08-12 03:11:56', '2022-08-12 03:11:56'),
(55, 1022, '2022-08-12 03:30:39', '2022-08-12 03:30:39'),
(56, 1022, '2022-08-12 03:37:56', '2022-08-12 03:37:56'),
(57, 1022, '2022-08-12 04:00:18', '2022-08-12 04:00:18'),
(58, 1022, '2022-08-12 08:28:46', '2022-08-12 08:28:46'),
(59, 1022, '2022-08-12 10:15:19', '2022-08-12 10:15:19'),
(60, 1022, '2022-08-12 16:27:31', '2022-08-12 16:27:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_option_answer`
--

CREATE TABLE `user_option_answer` (
  `id_user_option_answer` bigint(20) UNSIGNED NOT NULL,
  `id_user_answer_user_option_answer` bigint(20) UNSIGNED NOT NULL,
  `id_question_user_option_answer` bigint(20) NOT NULL,
  `id_option_answer_user_option_answer` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_option_answer`
--

INSERT INTO `user_option_answer` (`id_user_option_answer`, `id_user_answer_user_option_answer`, `id_question_user_option_answer`, `id_option_answer_user_option_answer`) VALUES
(120, 45, 1, 5),
(121, 45, 2, 11),
(122, 45, 3, 13),
(123, 45, 4, 17),
(124, 46, 1, 5),
(125, 47, 1, 5),
(127, 47, 3, 16),
(128, 47, 4, 17),
(129, 48, 1, 5),
(130, 48, 2, 10),
(131, 48, 3, 15),
(132, 48, 4, 20),
(134, 50, 1, 5),
(135, 50, 2, 6),
(136, 51, 1, 5),
(137, 51, 2, 11),
(138, 51, 3, 13),
(139, 51, 4, 20),
(140, 52, 1, 5),
(141, 52, 2, 10),
(142, 52, 3, 15),
(143, 52, 4, 20),
(144, 53, 1, 6),
(145, 53, 2, 11),
(146, 53, 3, 16),
(147, 53, 4, 17),
(148, 54, 1, 8),
(149, 54, 2, 12),
(150, 54, 3, 16),
(151, 54, 4, 20),
(152, 55, 1, 5),
(153, 55, 2, 12),
(154, 55, 3, 15),
(155, 55, 4, 20),
(156, 56, 1, 6),
(157, 56, 2, 11),
(158, 56, 3, 13),
(159, 56, 4, 18),
(160, 57, 1, 5),
(161, 57, 2, 11),
(162, 57, 3, 14),
(163, 57, 4, 20),
(164, 58, 1, 5),
(165, 58, 2, 10),
(166, 58, 3, 15),
(167, 58, 4, 20),
(168, 59, 1, 6),
(169, 59, 2, 11),
(170, 59, 3, 16),
(171, 59, 4, 19),
(172, 60, 1, 5),
(173, 60, 2, 10),
(174, 60, 3, 13),
(175, 60, 4, 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answer_score`
--
ALTER TABLE `answer_score`
  ADD PRIMARY KEY (`id_answer_score`),
  ADD KEY `id_question_category_answer_score` (`id_question_category_answer_score`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`),
  ADD UNIQUE KEY `name_config` (`name_config`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `option_answer`
--
ALTER TABLE `option_answer`
  ADD PRIMARY KEY (`id_option_answer`),
  ADD KEY `id_question_option_answer` (`id_question_option_answer`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `id_question_question_category` (`id_question_question_category`);

--
-- Indeks untuk tabel `question_category`
--
ALTER TABLE `question_category`
  ADD PRIMARY KEY (`id_question_category`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username_unique` (`username`);

--
-- Indeks untuk tabel `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id_user_answer`),
  ADD KEY `id_user_user_answer` (`id_user_user_answer`);

--
-- Indeks untuk tabel `user_option_answer`
--
ALTER TABLE `user_option_answer`
  ADD PRIMARY KEY (`id_user_option_answer`),
  ADD KEY `id_user_answer_user_option_answer` (`id_user_answer_user_option_answer`),
  ADD KEY `id_question_user_option_answer` (`id_question_user_option_answer`),
  ADD KEY `id_option_answer_user_option_answer` (`id_option_answer_user_option_answer`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answer_score`
--
ALTER TABLE `answer_score`
  MODIFY `id_answer_score` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id_config` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `option_answer`
--
ALTER TABLE `option_answer`
  MODIFY `id_option_answer` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `id_question` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `question_category`
--
ALTER TABLE `question_category`
  MODIFY `id_question_category` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `id_token` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT untuk tabel `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id_user_answer` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `user_option_answer`
--
ALTER TABLE `user_option_answer`
  MODIFY `id_user_option_answer` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `answer_score`
--
ALTER TABLE `answer_score`
  ADD CONSTRAINT `answer_score_ibfk_1` FOREIGN KEY (`id_question_category_answer_score`) REFERENCES `question_category` (`id_question_category`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `option_answer`
--
ALTER TABLE `option_answer`
  ADD CONSTRAINT `option_answer_ibfk_1` FOREIGN KEY (`id_question_option_answer`) REFERENCES `question` (`id_question`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_question_question_category`) REFERENCES `question_category` (`id_question_category`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_answer`
--
ALTER TABLE `user_answer`
  ADD CONSTRAINT `user_answer_ibfk_1` FOREIGN KEY (`id_user_user_answer`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_option_answer`
--
ALTER TABLE `user_option_answer`
  ADD CONSTRAINT `user_option_answer_ibfk_3` FOREIGN KEY (`id_user_answer_user_option_answer`) REFERENCES `user_answer` (`id_user_answer`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_option_answer_ibfk_4` FOREIGN KEY (`id_question_user_option_answer`) REFERENCES `question` (`id_question`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_option_answer_ibfk_5` FOREIGN KEY (`id_option_answer_user_option_answer`) REFERENCES `option_answer` (`id_option_answer`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
