-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2019 lúc 07:14 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_course`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HinhAnh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` longtext COLLATE utf8mb4_unicode_ci,
  `token_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level_id`, `provider`, `provider_id`, `HinhAnh`, `api_token`, `token_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'User_1', 'user_1@gmail.com', NULL, '$2y$10$tBwIFy0HjlnSnqVE39p20uQhgZnp1/LiCwGDC5QiGsQflwY43BMhC', 3, NULL, NULL, 'N7B8zH.jpg', NULL, NULL, NULL, '2019-03-30 04:41:05', NULL),
(3, 'User_2', 'user_2@gmail.com', NULL, '$2y$10$cJRigQFi3R/TSLgAGtWpYeh9fmuSZAZz37PC3u0am6rLNRxro.tOy', 3, NULL, NULL, 'KbJspa.jpg', NULL, NULL, NULL, '2019-03-30 04:41:06', NULL),
(4, 'User_3', 'user_3@gmail.com', NULL, '$2y$10$rcBYgu81ik9UB92e.X414.2L6uVdmYwh9mlXtbe3RVbJelL46L2AG', 3, NULL, NULL, 'KWLd3b.jpg', NULL, NULL, NULL, '2019-03-30 04:41:06', NULL),
(5, 'User_4', 'user_4@gmail.com', NULL, '$2y$10$1VHTHEhq.xkEJ1iuXiKCrODO4J8CsxVce5H7pJ3osI.zbsJTUi2hq', 3, NULL, NULL, 'V0mPJo.jpg', NULL, NULL, NULL, '2019-03-30 04:41:06', NULL),
(6, 'User_5', 'user_5@gmail.com', NULL, '$2y$10$rngLlrZnbkhES4KV1NbDrughFOA58m2sTB9qHl2ILPoUti7i2O9wy', 3, NULL, NULL, '3FWK8a.jpg', NULL, NULL, NULL, '2019-03-30 04:41:06', NULL),
(8, 'Tuấn', 'tuan@gmail.com', NULL, '$2y$10$khYkHQiQgO125wzlEk3A/unRIcFxuI5nDMa5AQijsI91EZMkvRMQy', 2, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1/user/U04RHF_13507018_2087689991456183_9210636909744607136_n.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA2Zjk3NDljZTQ0MWM3NGNhZWEyNmMzNWRjYzViNzRkODI2MTZhYmU1NzBlMTBmNjA4MDNmMzg5MTEzODZlZGNmZTQ2ODQ4NWMyNDU2MGEwIn0.eyJhdWQiOiIxIiwianRpIjoiMDZmOTc0OWNlNDQxYzc0Y2FlYTI2YzM1ZGNjNWI3NGQ4MjYxNmFiZTU3MGUxMGY2MDgwM2YzODkxMTM4NmVkY2ZlNDY4NDg1YzI0NTYwYTAiLCJpYXQiOjE1NTM5Mjc0NjIsIm5iZiI6MTU1MzkyNzQ2MiwiZXhwIjoxNTg1NTQ5ODYyLCJzdWIiOiI4Iiwic2NvcGVzIjpbXX0.xPMmQjyYwhpwcQPaBGLDw8ieDiya9yvKXJTgmtir1stGwcCYVCQqPil4Ddc6MX9KnbFynXBrU0j7PlU_24fzQBlt3ZjX3cm8qpUO-fCW7GIly1SRLyAPZuS2Fxw0PhcSEcl_kBUD15eP04ivII2qmamSR322SuqyID5bxfEGe8AwnOieu1_pPdy9pjAs_dJTrL7yni1xdnP57HN34I4tivJCSWTos8JvSMKZw0NneV5ihMSaJ9-3GWaIInK3QZSaU3x_4qZfDA56i6YRYpCzk_h4i1lJh2EdkHm58TRpyI1chMBNQgFsbX039Iiron-sRTm_TrWFYdrY0mD_1PZY3jfx--A4SU6oj1hIhvgM5cLxxPy1BBO3ojJXAoEKq5pGTaetYbcIekNpzlDLm2zYMFxIMrxod1HWF0uTWdu2RYOoiX_nG54RVw_p126TqC6TGmgFkYhM0Z0vMgBaSt_7C6Ulx6aldh-dOxwf6OQoybCC7UdwfrqmL6yVyJYfk81EergUs927ATtU3c8tMrAMsNYWW2y0GUTQ9c8F5U2MRAMIJYHfEuWGYi_voNr18XDr2kVqhnAifnORK0OqC5GuWs18kFcZ1OcxBy8JTMvNSjLenGFaTrdXK6XquFRKyIDMOi3vgSyPV9MuH7_UpbvLOk75gOpxUW5vwMRQ5AraG00', 'Bearer', NULL, '2019-03-30 06:31:01', '2019-03-30 06:39:07'),
(9, 'Duy', 'duy@gmail.com', NULL, '$2y$10$NsI23kc54vNGSyKmKJ1m6eLr7/FFFxpV6rfmS7lNL9Dm3icbt/n8q', 2, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1553498961/user/default.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImI3MTIyYzE3Zjk0M2I2MjgwN2U4Y2VkMDE0YTA3ZWNjODUyY2QzNzgzZWU2MzE5ZjMxNzcyOTJiN2QwMjY3YmE1YTlkOWQzNGQ2OWZhNjA2In0.eyJhdWQiOiIxIiwianRpIjoiYjcxMjJjMTdmOTQzYjYyODA3ZThjZWQwMTRhMDdlY2M4NTJjZDM3ODNlZTYzMTlmMzE3NzI5MmI3ZDAyNjdiYTVhOWQ5ZDM0ZDY5ZmE2MDYiLCJpYXQiOjE1NTM5Mjc1MjUsIm5iZiI6MTU1MzkyNzUyNSwiZXhwIjoxNTg1NTQ5OTI1LCJzdWIiOiI5Iiwic2NvcGVzIjpbXX0.d1JEJDPMHqKeavQHJ6LHfNzKo00NGoEhaSac4bC9DJg-8_HLqWhRc93tqgg66t2g8vUL74wGGcLFJhUGudAcaJ8LJihETAA62M1sFYkFTvFsHLbC5DdmvwVxAedEDbuGMjmIsov9XrnBuH7u8lW8E9Xh5SOS3z9t9l_9dBcMtaNWjmz4DFKWSTVJ2BMSEGlLvroZHyhiQPqGDD_yeEY_gmu5TXXrFRtYv-X5NYHjFyxgUsOJG2Cf5PuWPWNdotXnHLQSiZ6r6E9uTbVfFIyFFwUaom9FiaO_1WJUDRQtGR4s0lhuy0YHMKE5SAh005G_Wt4ObCv6z7RXziXDaD-CqBrHtq0kVYErWp0-CCiDtZvOO878VR-UVgaocnHOdFdXZeMK0prJI_Vdiga9iTq6P7lTCtLS1rE4jP4g2LqcNyQdbl05VVz71s4RgPOOHSe0imSr6bI76wRZLKS8FRQNVqROjwWpUtj1K5o36XiUf-TlwMtGrAkeFiFJDiwATe2deMQdCztOC14C0dllVOMP6EVOB1OPBppK9MPBS_enTE579yW35jUMUw2mXLMB0plv_kBGvPxvjuHLx39waEkSHRzMHQwM6Cn3YmS6wX3ZRDmB2UBGqlChSznz6Wq9XKpDM7SsZR5zPwFXaXIsiD3UfmGvnnzFCzUH2N4j-pwBijE', 'Bearer', NULL, '2019-03-30 06:32:04', '2019-03-30 06:39:54'),
(10, 'abc', 'abc@gmail.com', NULL, '$2y$10$ETpFOUnq70po513Etz3WieE5whix4wZg7uzP3/3qUaXwu1cCvQ/7K', 3, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1553498961/user/default.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjkyM2JhMDIzNmVmNjdhNGQ3YjJhYTlkZDg1YTI5MTNjMzIwMWU5ZTUxMmQ4OWRhNDhlOTBmNTAxNzIyMDdjZDJiY2QzNDM5YjJjNDFjY2QyIn0.eyJhdWQiOiIxIiwianRpIjoiOTIzYmEwMjM2ZWY2N2E0ZDdiMmFhOWRkODVhMjkxM2MzMjAxZTllNTEyZDg5ZGE0OGU5MGY1MDE3MjIwN2NkMmJjZDM0MzliMmM0MWNjZDIiLCJpYXQiOjE1NTM5Mjc1NDUsIm5iZiI6MTU1MzkyNzU0NSwiZXhwIjoxNTg1NTQ5OTQ1LCJzdWIiOiIxMCIsInNjb3BlcyI6W119.tmavhTY6U3jMd1e_WjBTscp7-w7HPwVXNmHPpCiqf28ftoMPBpI_CRnVMUqwWCQ1gFUQhxoDXhJRi9GgSjvqsK4kXxaicZyUh89GTidXijwjyLtiVVXAojFM4eDm6pzSauC_9isvs__WJTMhgGWw1dyyusZhQimi7qeEMMFjZ-x65UnOE40Nf6qms24TUGgUJSFP4NGTEImzNjXCtGgggN8anNd4ihlDGLQXpEw0PZRtoEOI3ihkgCAtxvJOPHpNmryPkSGTECbCErKirE452aN83npsl_2_NDXQRPvwXnl-c9M8jJmu_Zr6Z7-JKk64SaluSK5p3S-LQoNj2_rh4XW4ORZgM3gXIMDWBAW1fjB04XelhxQ2JUaeaoallpZI69xefdy2-G7VkYVam2rXizbmG4Mf2AqqLY9moY3DT2oiJdWHJgnhNWMKm_bMF4gFyXCaalYoBT62A3fMWL9_J6nctAiQk1MbE7GRb5mXj8DF2SwCXUcCvC_3WtrSEnc8orIhsPGO4psVGyoVp0ZQ-yofrn6LMGhU2siFOAqVJCupDfPeRZhxbwIM5oJc-lKva94BTRjP65g3ojYrU3-C_PaZJ41_XOIzpn7GK1OokTXaKFj4U0_TuWMyQa4lH0YtvaCZN-0rsg5f5LgeLGwEmI6-M0YXT8TDVD7egrM7fK4', 'Bearer', NULL, '2019-03-30 06:32:25', '2019-03-30 06:32:25'),
(11, 'bin', 'bin@gmail.com', NULL, '$2y$10$e0OH.dN43W7sdNHbUIBOluV6jHduROt1GUMElGunK1O89IWRiVQBm', 3, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1553498961/user/default.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjRmMWI1OGMyN2QxMWRhZGVlZDJhNTU2NTljYzcyZjY5NDllNGRmOGMyZGZkZmQ5NjQ5NzlhMTVmNWExZDdiMGNmYjNkNjljY2U5MjhiNmI3In0.eyJhdWQiOiIxIiwianRpIjoiNGYxYjU4YzI3ZDExZGFkZWVkMmE1NTY1OWNjNzJmNjk0OWU0ZGY4YzJkZmRmZDk2NDk3OWExNWY1YTFkN2IwY2ZiM2Q2OWNjZTkyOGI2YjciLCJpYXQiOjE1NTM5Mjc1NjAsIm5iZiI6MTU1MzkyNzU2MCwiZXhwIjoxNTg1NTQ5OTU5LCJzdWIiOiIxMSIsInNjb3BlcyI6W119.WM8ynv0426I_7PI5XikzbS3tOL7Lj6xIMDKYoXX7m1f9rgACQpv0m_yQ4wdMc74q_d8QQdrixl6DQBGJ7UimNsADhAajLJpjmsV_PUag7z3hN1_75vVJPT4gGtHgtxixBU7dVie1XR-Vzsevgb6gzVndUSddJ-tzCeZTeO69kVNAa9mR8xwKmhaYryeFU6TyWQgHvGKRdAn0qZ6vzDwFuA78ujIEmoAyDdVY2HiU2jlf64Z1ok9H9FoFjrd2SIOO_Qc-WsO7SI_E_slhFFyECxgRJWDIel7_9r4Jq061xB4eXHdLQsOx3ZRJTrEIfD7S3UcA_OA_Nyx0Q95JP9jPUjxPbi7cIMMBLBtc3SHKo22EhqqwmJimMuYj8laW-aw37-IILravKEDTSpB6BIvbrFk3DSvUQOcHTn9etVkQzj9PDfu_bcY5mHJkNGFCmfOdBSETgCrj77KV4Kp3fP4akQgM0z0STW2WqgRuWlzenbETCoDeNfgOSE4gysFcx547Q5J98MNgVaU9qTD7XKaAMPZm5p8MVcdt3gZoFaIpfNcdevGO-ZkHI6KlhoZb79csu564_I69TSu8jzbduRN--ZyLHiT62pzV95lq_6iL9HAd_n9jY1rz_hvzw7MMrhjH6KbbXBSNS1AmLA-df-lC2Hu7dv-GOcvQfJnM22OwxIU', 'Bearer', NULL, '2019-03-30 06:32:39', '2019-03-30 06:32:40'),
(12, 'Admin', 'admin@gmail.com', NULL, '$2y$10$U6iic4Yjzmn08x3gr/Ak8uy5F0ip8MgXc6jOqqzhtayX59d1n.dEq', 1, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1/user/fyKA7l_18945089_939648599510469_7829392_n.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjgwYTU1MWQzODBiMjExN2YxYmQ0OWVkYTU3MDE5ZTJjY2E5NTU0YzIzYTUxMjk2ZWUyNWNmNWFhNGZiZWIzZmE1ZjJiZTMyYmQzNTAyZDEzIn0.eyJhdWQiOiIxIiwianRpIjoiODBhNTUxZDM4MGIyMTE3ZjFiZDQ5ZWRhNTcwMTllMmNjYTk1NTRjMjNhNTEyOTZlZTI1Y2Y1YWE0ZmJlYjNmYTVmMmJlMzJiZDM1MDJkMTMiLCJpYXQiOjE1NTM5Mjc2MzAsIm5iZiI6MTU1MzkyNzYzMCwiZXhwIjoxNTg1NTUwMDMwLCJzdWIiOiIxMiIsInNjb3BlcyI6W119.k6fnT4vs9tL2e2NQAO8kqca1vekeZJl9gjyMcSm3D3u0TbkDHkv2B-DMMnYMlc2RhEkCIgVt1k27vtTZDcxnBvR93F5KwR_YDUAZ6DgigQAYRtk8t734HV0fNWRfO62v82DVl90Q4rI4ADz7fpnNGodCKcG9di1ez0MxVuCeunQ8sKCkg_djYeBt5N6pBUivKDFtNiACPvqr0be0AapMdjkJay4RZfQ5Unc5R3K7-8hpru26-9LgD-o7HxfnUmjE4l-QvV_Czw9xWvvJB6-KjQ7IEEnOuuAdmYuRvgLxjSKKIba0dCx8hbh5wiH8qqwgH7KZzXJUW-QzMazKK71H24aaBodjYx-bY2nQCVHk6RkS_nKOms-oniP1HzDHtV8-3e-_Qweq18drAQTssqLaqyMQh96MU6VK_-tyttHpTDG4AjK8skY7bJPzIB6zdCcdQIsb4twhLDDzDxeZGjKkSFCmKBjgNwfq6bUpIqvnoHO1rI04PqTeLxEuEjNxNZKEy5ehZF4-kAvAbryLNzXvU8iIwj-GNYe_sfEM0Az0_cftDRBS8tnJ95OdKgzFUzNp8QQhNXEd3oL69OMUjXIPcL1-OcK-LDifTGky17hScpluC7AbgZhdGB1whuY9sdVFO5PYNokFX98msguhAT4RwujJ6ZuQe9JJnyxFBAFUDwk', 'Bearer', NULL, '2019-03-30 06:33:50', '2019-03-30 06:33:50'),
(13, 'Lê Tí', 'ti@gmail.com', NULL, '$2y$10$DsmRglODOwPdk57E4GXPm.tzQ2b5/Fxmio3Q5QdA6L/Pd503MLAAC', 3, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1553498961/user/default.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImM4MDA4N2U2NDUwOGQ3MDYwZjc1ZWRkMzQ4M2UwMzJjZGEzMDAwMmM5MzIwZTNhOGM0OWRlYTk1ODhhYzQwN2I2ZmIwN2RmMjY3NmQ3ZDdmIn0.eyJhdWQiOiIxIiwianRpIjoiYzgwMDg3ZTY0NTA4ZDcwNjBmNzVlZGQzNDgzZTAzMmNkYTMwMDAyYzkzMjBlM2E4YzQ5ZGVhOTU4OGFjNDA3YjZmYjA3ZGYyNjc2ZDdkN2YiLCJpYXQiOjE1NTQwOTYxMTAsIm5iZiI6MTU1NDA5NjExMCwiZXhwIjoxNTg1NzE4NTA5LCJzdWIiOiIxMyIsInNjb3BlcyI6W119.VviwCSpAL0yrgZwYGb36aLVtjDOUiaDLcv0PDCgIXnEp1RINKpl8B-haOZtSBwoEQOYWFBSoTRCjQizhOgHILK6zvWGSH06_SJHKIztSre1bemImdEsq89ciffqNICwxSj6jL8bnlDR4p2QLbACHD4WXEhHhFvv3czVGcL1_GtMYnEdOAhUbaiMXHdZzRJCyHY2TEAopkTLSXlHsqB2gxQ6YyKqB6P3gjnMCNmle3fRN0D17EtAmQOT5E0DEE0r_nyxvR0juPu-58gfWbovZ8yiQVUTosqSG8S_nQcscI1k7PB4t4fVNaw3zXraKR_bbfsyM1KFHLI8RsIfblbWgn6R9hni6zd7E7J2pSezvQqzRCL9nSW3Cp3n3MxNGq7WwjODx4tAYv0q13pv0dAC9DTnbEFl_tuB5O_UvJ5eo3Whx3WVIsgekSjYZNyvs4Zq04KjkVEwDO-wUQzsRpryYjMzUHomugoCdSTKiLc-iFbrxrSULlemfHiY8zDZtE3fBAaE4QPgr_cRozNOjlhUu9mq6025h_4yDcth8cE80Df1iC3s8C_GQviCqqejc-a3o8RhCqT7Wc4RxCOTeqbu29Rgt98SX8NJtlxGZguWS3tYi3PKgtUv_CQgAXtZBLJF6GlOfgAfXb4P16W7YeU29_d5Xm_0zdrHqHJO98qaGam4', 'Bearer', NULL, '2019-04-01 05:21:49', '2019-04-01 05:21:50'),
(14, 'Tuấn Ledly', 'nguyenledly19971@gmail.com', NULL, '$2y$10$bQPHOeuGAtHIZ6RMHYbr1O2cWERCKKB9mvTvPDMqrfIVKAr82lIzO', 3, NULL, NULL, 'https://res.cloudinary.com/tuannguyen/image/upload/v1553498961/user/default.jpg', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImJkYTI0MTE0MDM4ZWVlMTkyODQwNGQwZjFmZWFiNmU3ZmRlZGZhY2U3MzI0OWZiZmViZGRkMWQ2ZWY0NDdiMmYyMDQ1ZDRiZjNjMDY0NjRiIn0.eyJhdWQiOiIxIiwianRpIjoiYmRhMjQxMTQwMzhlZWUxOTI4NDA0ZDBmMWZlYWI2ZTdmZGVkZmFjZTczMjQ5ZmJmZWJkZGQxZDZlZjQ0N2IyZjIwNDVkNGJmM2MwNjQ2NGIiLCJpYXQiOjE1NTQzOTg5MzQsIm5iZiI6MTU1NDM5ODkzNCwiZXhwIjoxNTg2MDIxMzM0LCJzdWIiOiIxNCIsInNjb3BlcyI6W119.sl6VDoO1i0SGjUwYtOV9An-ITNewje9wcBGOLShCnUvMQEsC444h6wvhKOXFKuJprW8itBFHVT8gl3YBuOeoS-S8ZCUsr945amWqSntDTQd-umOtrtsUFLUQUX9FNhp_oQhio6CZZR3EA26b2XxzHXIUR3A1ifWTpcYzBb2iolDugcjHgtagZiJERtox-cKh9LcfsWBg847C_TIeUmXG8rsQGWiqkSGAgWEamdAhCzREArvM2A49XbE0erHbZ5J47dSsvXhHh7tDxbICfdr8c__NRUwdjE6iKVeKVk7PLdhAmF20ihtlpnTbchB_M4lG_tlrrCDwSp3x9U8RU6ERbb65eGddPXpyrlGhfnZPGXO15YWd5Zq20ABwWE3k0xuhIZiD0YvfzMiNfUJdrT9enx2GfIsXPlgZmZswGgwZR28NwRjAAiY5DdsqdiynjCVRjHpoeRdRORFV9jIR_Rzu4q5brkkOgRsNeaWmTfYchn8-FwzB57Uep31bEkHVO1tiVRhis-ySH6kbB2yUapD2xVyCp9SwfdZhqxp75U2gxEa89v7p1NqAy6T_HfBg6WtodB8yAB3k_kQf2_s62z6-fbcvOPynmJotxIkA7TSAiiw6_8pVtJ-j3vm9FxrGJuUjvyRAVdJACFvASTDbeEl7PzL8aCZuNKsZzdMStMOKeLk', 'Bearer', NULL, '2019-04-04 17:28:53', '2019-04-04 17:28:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_level_id_index` (`level_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
