// SPDX-FileCopyrightText: 2026 RAprogramm <andrey.rozanov.vl@gmail.com>
// SPDX-License-Identifier: MIT

// ── Language: read from --input lang=... with "ru" as fallback ─────────────
#let lang = sys.inputs.at("lang", default: "en")

#set page(paper: "a4", margin: (left: 14mm, right: 14mm, top: 14mm, bottom: 14mm))
#set text(
  font: ("Liberation Sans", "Noto Sans CJK KR"),
  size: 9.5pt,
  lang: lang,
)
#set par(leading: 0.55em, justify: false)
#show link: it => text(fill: rgb("#2563eb"), underline(it))

#let blue    = rgb("#2563eb")
#let slate   = rgb("#64748b")
#let dark    = rgb("#0f172a")

// ── Translations ──────────────────────────────────────────────────────────────

#let T = (
  ru: (
    role:         "Rust Software Engineer",
    location:     "Вьетнам · Удалённо",
    s_about:      "О себе",
    about:        "Fullstack-разработчик с фокусом на Rust и высоконагруженные системы. 4+ года коммерческого опыта в backend, web-приложениях и блокчейн-решениях. Автор open-source библиотек с суммарными 6 000+ загрузками на crates.io. Maintainer в HyDE Project. Контрибьютор в проекты Zerocracy (Егор Бугаенко). Веду проекты полного цикла: от архитектуры до деплоя в Kubernetes.",
    s_skills:     "Технический стек",
    l_backend:    "Backend:",
    l_frontend:   "Frontend:",
    l_blockchain: "Blockchain:",
    l_db:         "Базы данных:",
    l_devops:     "DevOps:",
    l_integr:     "Интеграции:",
    s_exp:        "Опыт работы",
    j_lead:       "Lead Software Engineer / CTO",
    j_back:       "Backend Developer",
    j_full:       "Fullstack Developer",
    j_back_sol:   "Backend Developer (Solana)",
    qbd_desc:     "Продуктовая разработка и аутсорс для стартапов. Единственный инженер в стеке: backend, frontend, DevOps, CI/CD. Менторинг стажёров (2 набора × 2 человека).",
    dex_title:    "DEX Trading Terminal",
    dex_1:        "Торговля деривативами через Hyperliquid DEX",
    dex_2:        "Реал-тайм данные по WebSocket, управление ордерами",
    priz_title:   "Prizoria — платформа событий",
    priz_1:       "Розыгрыши с интеграцией YooKassa и TON Wallet",
    priz_2:       "Telegram Mini App для участников, автовыплаты победителям",
    ordi_title:   "Ordinotes — Bitcoin Ordinals трекер",
    ordi_1:       "Magic Eden API, агрегация данных с кошельков, расчёт total balance",
    ordi_2:       "Рефакторинг legacy Java → Rust; презентован на Ordinals Paris 2025",
    batt_title:   "Battery — мультичейн агрегатор NFT",
    batt_1:       "Whitelist и NFT на BTC, ETH, SOL, Abstract",
    batt_2:       "Доработка фронтенда существующего проекта (Python + Vue)",
    stack_lbl:    "Стек:",
    sm_desc:      "Разработка серверной части финтех-приложения: REST API, интеграция с платёжными системами.",
    cerb_1:       "On-chain middleware для Raydium DEX — смарт-контракт поверх Anchor",
    cerb_2:       "QUIC-клиент для низколатентной отправки транзакций в сеть Solana",
    cerb_3:       "Исследование лимитов RPC-нод и оптимизация throughput",
    hab2_1:       "Административные панели: Rust (backend) + React (frontend)",
    hab2_2:       "Полный цикл деплоя: GitHub Actions → Docker → сервер, NGINX reverse proxy",
    aich_1:       "SPA на Yew.rs, компилируемый в WebAssembly; интеграция с Rust backend через gRPC (tonic)",
    aich_2:       "Настройка Envoy как gRPC-Web proxy",
    hab1_game:    "Игровая платформа:",
    hab1_g1:      "Механики для шахмат, шашек, го, реверси (Go + Rust); матчмейкинг, статистика в PostgreSQL",
    hab1_g2:      "Solidity смарт-контракты для внутриигровой экономики",
    hab1_agg:     "Агрегатор криптоданных:",
    hab1_a1:      "Сбор данных с бирж, расчёт метрик, REST API для фронтенда",
    s_oss:        "Open Source  ·  40+ репозиториев  ·  6 000+ загрузок на crates.io",
    oss_libs:     "Библиотеки и инструменты",
    oss_tools:    "Инструменты и стандарты",
    oss_sys:      "Системное и низкоуровневое",
    lib_tg:       "Type-safe Rust обёртка для Telegram Web Apps API",
    lib_sql:      "Статический анализ SQL + LLM-оптимизация; SARIF output, CI/CD-ready",
    lib_ent:      "Derive-макрос: генерация DTO, репозиториев, SQL, REST и OpenAPI",
    lib_master:   "Framework-agnostic типизированные ошибки для Rust-сервисов",
    lib_quic:     "Низколатентный клиент для Solana через QUIC протокол",
    lib_bot:      "Production-ready шаблон для Telegram-ботов на teloxide",
    tool_rust:    "Стандарты кодирования для Rust-команд: форматирование, линтинг, CI/CD",
    tool_quality: "Анализатор качества Rust-кода со встроенными стандартами",
    tool_diff:    "AST-анализ для контроля размера PR: разделение production/test кода",
    sys_micro:    "Быстрые альтернативы HashMap/Vec для малых коллекций, zero-heap",
    sys_cstr:     "Safe zero-copy обёртка для передачи строк в C FFI (char**)",
    sys_logi:     "Полноценный Linux-драйвер и конфигуратор для мышей Logitech MX",
    contrib_lbl:  "Контрибуты в сообщество:",
    contrib_txt:  "HyDE Project — Maintainer (Rice Team), 16+ тем для Hyprland. Zerocracy / Objectionary — оплачиваемые контрибуты в sodg.rs и phie (Егор Бугаенко).",
    s_edu:        "Образование и языки",
    edu_name:     "ВФ РТА — Юридический факультет",
    edu_detail:   "неоконченное высшее, 2013",
    lng_ru:       "Русский:", lng_ru_v: "родной",
    lng_en:       "Английский:", lng_en_v: "B2",
    lng_vi:       "Вьетнамский:", lng_vi_v: "базовый",
    lng_ko:       "Корейский:", lng_ko_v: "A1",
    footer:       "Резюме обновлено: апрель 2026",
  ),

  en: (
    role:         "Rust Software Engineer",
    location:     "Vietnam · Remote",
    s_about:      "About",
    about:        "Fullstack developer focused on Rust and high-load systems. 4+ years of commercial experience in backend, web applications and blockchain solutions. Author of open-source libraries with 6,000+ total downloads on crates.io. Maintainer at HyDE Project. Contributor to Zerocracy projects (Yegor Bugayenko). Lead full-cycle projects from architecture to Kubernetes deployment.",
    s_skills:     "Technical Stack",
    l_backend:    "Backend:",
    l_frontend:   "Frontend:",
    l_blockchain: "Blockchain:",
    l_db:         "Databases:",
    l_devops:     "DevOps:",
    l_integr:     "Integrations:",
    s_exp:        "Work Experience",
    j_lead:       "Lead Software Engineer / CTO",
    j_back:       "Backend Developer",
    j_full:       "Fullstack Developer",
    j_back_sol:   "Backend Developer (Solana)",
    qbd_desc:     "Product development and outsourcing for startups. Sole engineer in the stack: backend, frontend, DevOps, CI/CD. Mentoring interns (2 cohorts × 2 people).",
    dex_title:    "DEX Trading Terminal",
    dex_1:        "Derivatives trading via Hyperliquid DEX integration",
    dex_2:        "Real-time data via WebSocket, order and position management",
    priz_title:   "Prizoria — Events Platform",
    priz_1:       "Giveaways with YooKassa and TON Wallet payment integration",
    priz_2:       "Telegram Mini App for participants, automated winner payouts",
    ordi_title:   "Ordinotes — Bitcoin Ordinals Tracker",
    ordi_1:       "Magic Eden API, multi-wallet data aggregation, total balance calculation",
    ordi_2:       "Refactored legacy Java backend to Rust; presented at Ordinals Paris 2025",
    batt_title:   "Battery — Multi-chain NFT Aggregator",
    batt_1:       "Whitelists and NFTs on BTC, ETH, SOL, Abstract",
    batt_2:       "Frontend enhancements on existing codebase (Python + Vue)",
    stack_lbl:    "Stack:",
    sm_desc:      "Server-side development for a fintech application: REST API, payment system integration.",
    cerb_1:       "On-chain middleware for Raydium DEX built on top of an existing Anchor contract",
    cerb_2:       "QUIC client for low-latency transaction submission to the Solana network",
    cerb_3:       "RPC node limit research and throughput optimization",
    hab2_1:       "Admin panels: Rust (backend) + React (frontend)",
    hab2_2:       "Full deployment pipeline: GitHub Actions → Docker → server, NGINX reverse proxy",
    aich_1:       "SPA in Yew.rs compiled to WebAssembly; Rust backend integration via gRPC (tonic)",
    aich_2:       "Envoy configured as gRPC-Web proxy",
    hab1_game:    "Gaming Platform:",
    hab1_g1:      "Game mechanics for chess, checkers, go, reversi (Go + Rust); matchmaking, stats in PostgreSQL",
    hab1_g2:      "Solidity smart contracts for the in-game economy",
    hab1_agg:     "Crypto Data Aggregator:",
    hab1_a1:      "Exchange data collection, metrics computation, REST API for the frontend",
    s_oss:        "Open Source  ·  40+ repositories  ·  6,000+ downloads on crates.io",
    oss_libs:     "Libraries & Tools",
    oss_tools:    "Dev Tools & Standards",
    oss_sys:      "Systems & Low-level",
    lib_tg:       "Type-safe Rust wrapper for the Telegram Web Apps API",
    lib_sql:      "Static SQL analysis + LLM optimization; SARIF output, CI/CD-ready",
    lib_ent:      "Derive macro: generates DTO, repositories, SQL, REST and OpenAPI",
    lib_master:   "Framework-agnostic typed error types for Rust services",
    lib_quic:     "Low-latency Solana client over the QUIC protocol",
    lib_bot:      "Production-ready Telegram bot template built on teloxide",
    tool_rust:    "Coding standards for Rust teams: formatting, linting, CI/CD",
    tool_quality: "Rust code quality analyzer with built-in standards",
    tool_diff:    "AST-based PR size control: separates production from test code",
    sys_micro:    "Fastest HashMap/Vec alternatives for small collections, zero-heap",
    sys_cstr:     "Safe zero-copy wrapper for passing strings to C FFI (char**)",
    sys_logi:     "Full Linux driver and configurator for Logitech MX mice",
    contrib_lbl:  "Community Contributions:",
    contrib_txt:  "HyDE Project — Maintainer (Rice Team), 16+ themes for Hyprland. Zerocracy / Objectionary — paid contributions to sodg.rs and phie (Yegor Bugayenko).",
    s_edu:        "Education & Languages",
    edu_name:     "VF RTA — Faculty of Law",
    edu_detail:   "incomplete higher education, 2013",
    lng_ru:       "Russian:", lng_ru_v: "native",
    lng_en:       "English:", lng_en_v: "B2",
    lng_vi:       "Vietnamese:", lng_vi_v: "basic",
    lng_ko:       "Korean:", lng_ko_v: "A1",
    footer:       "Resume updated: April 2026",
  ),

  vi: (
    role:         "Kỹ sư phần mềm Rust",
    location:     "Việt Nam · Làm việc từ xa",
    s_about:      "Giới thiệu",
    about:        "Lập trình viên Fullstack tập trung vào Rust và các hệ thống tải cao. 4+ năm kinh nghiệm thương mại trong backend, ứng dụng web và giải pháp blockchain. Tác giả các thư viện mã nguồn mở với tổng cộng hơn 6.000 lượt tải trên crates.io. Maintainer tại HyDE Project. Đóng góp cho các dự án Zerocracy (Yegor Bugayenko). Quản lý dự án toàn chu kỳ từ kiến trúc đến triển khai Kubernetes.",
    s_skills:     "Công nghệ",
    l_backend:    "Backend:",
    l_frontend:   "Frontend:",
    l_blockchain: "Blockchain:",
    l_db:         "Cơ sở dữ liệu:",
    l_devops:     "DevOps:",
    l_integr:     "Tích hợp:",
    s_exp:        "Kinh nghiệm làm việc",
    j_lead:       "Kỹ sư phần mềm trưởng / CTO",
    j_back:       "Lập trình viên Backend",
    j_full:       "Lập trình viên Fullstack",
    j_back_sol:   "Lập trình viên Backend (Solana)",
    qbd_desc:     "Phát triển sản phẩm và gia công phần mềm cho các startup. Kỹ sư duy nhất trong toàn bộ stack: backend, frontend, DevOps, CI/CD. Hướng dẫn thực tập sinh (2 đợt × 2 người).",
    dex_title:    "DEX Trading Terminal",
    dex_1:        "Giao dịch phái sinh qua tích hợp Hyperliquid DEX",
    dex_2:        "Dữ liệu thời gian thực qua WebSocket, quản lý lệnh và vị thế",
    priz_title:   "Prizoria — Nền tảng sự kiện",
    priz_1:       "Rút thăm trúng thưởng tích hợp YooKassa và TON Wallet",
    priz_2:       "Telegram Mini App cho người tham gia, tự động thanh toán cho người thắng",
    ordi_title:   "Ordinotes — Theo dõi Bitcoin Ordinals",
    ordi_1:       "Magic Eden API, tổng hợp dữ liệu đa ví, tính toán số dư",
    ordi_2:       "Tái cấu trúc legacy Java → Rust; trình bày tại Ordinals Paris 2025",
    batt_title:   "Battery — Tổng hợp NFT đa chuỗi",
    batt_1:       "Whitelist và NFT trên BTC, ETH, SOL, Abstract",
    batt_2:       "Phát triển thêm frontend cho dự án hiện có (Python + Vue)",
    stack_lbl:    "Công nghệ:",
    sm_desc:      "Phát triển phía server cho ứng dụng fintech: REST API, tích hợp hệ thống thanh toán.",
    cerb_1:       "On-chain middleware cho Raydium DEX xây trên Anchor contract hiện có",
    cerb_2:       "QUIC client độ trễ thấp để gửi giao dịch lên mạng Solana",
    cerb_3:       "Nghiên cứu giới hạn RPC node và tối ưu hóa throughput",
    hab2_1:       "Bảng quản trị: Rust (backend) + React (frontend)",
    hab2_2:       "Pipeline triển khai đầy đủ: GitHub Actions → Docker → máy chủ, NGINX reverse proxy",
    aich_1:       "SPA bằng Yew.rs biên dịch sang WebAssembly; tích hợp Rust backend qua gRPC (tonic)",
    aich_2:       "Cấu hình Envoy làm gRPC-Web proxy",
    hab1_game:    "Nền tảng game:",
    hab1_g1:      "Cơ chế game cho cờ vua, cờ đam, cờ vây, reversi (Go + Rust); matchmaking, thống kê trong PostgreSQL",
    hab1_g2:      "Smart contract Solidity cho nền kinh tế trong game",
    hab1_agg:     "Tổng hợp dữ liệu crypto:",
    hab1_a1:      "Thu thập dữ liệu từ sàn giao dịch, tính toán metrics, REST API cho frontend",
    s_oss:        "Mã nguồn mở  ·  40+ kho lưu trữ  ·  6.000+ lượt tải trên crates.io",
    oss_libs:     "Thư viện & Công cụ",
    oss_tools:    "Công cụ phát triển & Tiêu chuẩn",
    oss_sys:      "Hệ thống & Cấp thấp",
    lib_tg:       "Wrapper Rust type-safe cho Telegram Web Apps API",
    lib_sql:      "Phân tích SQL tĩnh + tối ưu hóa LLM; SARIF output, CI/CD-ready",
    lib_ent:      "Derive macro: tạo DTO, repository, SQL, REST và OpenAPI",
    lib_master:   "Kiểu lỗi có kiểu dữ liệu framework-agnostic cho dịch vụ Rust",
    lib_quic:     "Client Solana độ trễ thấp qua giao thức QUIC",
    lib_bot:      "Template bot Telegram production-ready xây trên teloxide",
    tool_rust:    "Tiêu chuẩn lập trình cho nhóm Rust: định dạng, lint, CI/CD",
    tool_quality: "Phân tích chất lượng code Rust với tiêu chuẩn tích hợp",
    tool_diff:    "Phân tích AST kiểm soát kích thước PR: tách code production/test",
    sys_micro:    "Thay thế HashMap/Vec nhanh nhất cho collection nhỏ, zero-heap",
    sys_cstr:     "Wrapper zero-copy an toàn để truyền chuỗi vào C FFI (char**)",
    sys_logi:     "Driver Linux đầy đủ và công cụ cấu hình cho chuột Logitech MX",
    contrib_lbl:  "Đóng góp cộng đồng:",
    contrib_txt:  "HyDE Project — Maintainer (Rice Team), 16+ theme cho Hyprland. Zerocracy / Objectionary — đóng góp có thù lao vào sodg.rs và phie (Yegor Bugayenko).",
    s_edu:        "Học vấn và Ngôn ngữ",
    edu_name:     "VF RTA — Khoa Luật",
    edu_detail:   "chưa hoàn thành đại học, 2013",
    lng_ru:       "Tiếng Nga:", lng_ru_v: "bản ngữ",
    lng_en:       "Tiếng Anh:", lng_en_v: "B2",
    lng_vi:       "Tiếng Việt:", lng_vi_v: "cơ bản",
    lng_ko:       "Tiếng Hàn:", lng_ko_v: "A1",
    footer:       "Cập nhật: tháng 4 năm 2026",
  ),

  ko: (
    role:         "Rust 소프트웨어 엔지니어",
    location:     "베트남 · 원격 근무",
    s_about:      "소개",
    about:        "Rust와 고부하 시스템에 중점을 둔 풀스택 개발자. Backend, 웹 애플리케이션, 블록체인 솔루션 분야 4년 이상의 상업적 경험. crates.io에서 총 6,000회 이상 다운로드된 오픈소스 라이브러리 저자. HyDE Project 메인테이너. Zerocracy 프로젝트 기여자 (Yegor Bugayenko). 아키텍처부터 Kubernetes 배포까지 전체 주기 프로젝트 리드.",
    s_skills:     "기술 스택",
    l_backend:    "Backend:",
    l_frontend:   "Frontend:",
    l_blockchain: "블록체인:",
    l_db:         "데이터베이스:",
    l_devops:     "DevOps:",
    l_integr:     "연동:",
    s_exp:        "경력",
    j_lead:       "수석 소프트웨어 엔지니어 / CTO",
    j_back:       "백엔드 개발자",
    j_full:       "풀스택 개발자",
    j_back_sol:   "백엔드 개발자 (Solana)",
    qbd_desc:     "스타트업을 위한 제품 개발 및 외주. 스택 내 유일한 엔지니어: backend, frontend, DevOps, CI/CD. 인턴 멘토링 (2기 × 2명).",
    dex_title:    "DEX 트레이딩 터미널",
    dex_1:        "Hyperliquid DEX 연동을 통한 파생상품 거래",
    dex_2:        "WebSocket 실시간 데이터, 주문 및 포지션 관리",
    priz_title:   "Prizoria — 이벤트 플랫폼",
    priz_1:       "YooKassa 및 TON Wallet 연동 경품 추첨",
    priz_2:       "참가자용 Telegram Mini App, 당첨자 자동 지급",
    ordi_title:   "Ordinotes — Bitcoin Ordinals 트래커",
    ordi_1:       "Magic Eden API 연동, 멀티 지갑 데이터 집계, 잔액 계산",
    ordi_2:       "레거시 Java → Rust 리팩토링; Ordinals Paris 2025에서 발표",
    batt_title:   "Battery — 멀티체인 NFT 애그리게이터",
    batt_1:       "BTC, ETH, SOL, Abstract의 화이트리스트 및 NFT",
    batt_2:       "기존 코드베이스 (Python + Vue) 프론트엔드 개선",
    stack_lbl:    "스택:",
    sm_desc:      "핀테크 애플리케이션 서버 개발: REST API, 결제 시스템 연동.",
    cerb_1:       "기존 Anchor 컨트랙트 기반 Raydium DEX 온체인 미들웨어",
    cerb_2:       "Solana 네트워크 저지연 트랜잭션 전송 QUIC 클라이언트",
    cerb_3:       "RPC 노드 한계 연구 및 처리량 최적화",
    hab2_1:       "관리자 패널: Rust (백엔드) + React (프론트엔드)",
    hab2_2:       "전체 배포 파이프라인: GitHub Actions → Docker → 서버, NGINX 리버스 프록시",
    aich_1:       "WebAssembly로 컴파일되는 Yew.rs SPA; gRPC(tonic)로 Rust 백엔드 연동",
    aich_2:       "Envoy를 gRPC-Web 프록시로 구성",
    hab1_game:    "게임 플랫폼:",
    hab1_g1:      "체스, 체커, 바둑, 리버시 게임 메커닉 (Go + Rust); 매치메이킹, PostgreSQL 통계",
    hab1_g2:      "인게임 경제를 위한 Solidity 스마트 컨트랙트",
    hab1_agg:     "크립토 데이터 애그리게이터:",
    hab1_a1:      "거래소 데이터 수집, 지표 계산, 프론트엔드용 REST API",
    s_oss:        "오픈소스  ·  40개 이상 저장소  ·  crates.io 6,000회 이상 다운로드",
    oss_libs:     "라이브러리 & 도구",
    oss_tools:    "개발 도구 & 표준",
    oss_sys:      "시스템 & 저수준",
    lib_tg:       "Telegram Web Apps API용 타입 안전 Rust 래퍼",
    lib_sql:      "정적 SQL 분석 + LLM 최적화; SARIF 출력, CI/CD 지원",
    lib_ent:      "Derive 매크로: DTO, 레포지토리, SQL, REST, OpenAPI 자동 생성",
    lib_master:   "Rust 서비스를 위한 프레임워크 무관 타입 오류 처리",
    lib_quic:     "QUIC 프로토콜 기반 저지연 Solana 클라이언트",
    lib_bot:      "teloxide 기반 프로덕션 레디 Telegram 봇 템플릿",
    tool_rust:    "Rust 팀을 위한 코딩 표준: 포맷팅, 린팅, CI/CD",
    tool_quality: "내장 표준을 갖춘 Rust 코드 품질 분석기",
    tool_diff:    "PR 크기 제어를 위한 AST 분석: 프로덕션/테스트 코드 분리",
    sys_micro:    "소규모 컬렉션을 위한 최고속 HashMap/Vec 대체재, 제로힙",
    sys_cstr:     "C FFI(char**) 문자열 전달을 위한 안전한 제로카피 래퍼",
    sys_logi:     "Logitech MX 마우스용 완전한 Linux 드라이버 및 설정 도구",
    contrib_lbl:  "커뮤니티 기여:",
    contrib_txt:  "HyDE Project — Maintainer (Rice Team), Hyprland용 16개 이상 테마. Zerocracy / Objectionary — sodg.rs 및 phie 유료 기여 (Yegor Bugayenko).",
    s_edu:        "학력 및 언어",
    edu_name:     "VF RTA — 법학부",
    edu_detail:   "중퇴, 2013",
    lng_ru:       "러시아어:", lng_ru_v: "모국어",
    lng_en:       "영어:", lng_en_v: "B2",
    lng_vi:       "베트남어:", lng_vi_v: "기초",
    lng_ko:       "한국어:", lng_ko_v: "A1",
    footer:       "이력서 업데이트: 2026년 4월",
  ),
)

#let t(key) = T.at(lang).at(key)

// ── Helpers ───────────────────────────────────────────────────────────────────

#let section(title) = {
  v(0.9em)
  text(size: 12.5pt, weight: "bold", fill: blue, title)
  v(0.15em)
  line(length: 100%, stroke: (paint: blue, thickness: 1.2pt))
  v(0.35em)
}

#let job(pos, company, period) = {
  grid(
    columns: (1fr, auto),
    [
      #text(weight: "bold", size: 10pt, fill: dark, pos)
      #h(0.4em)
      #text(fill: slate, style: "italic", company)
    ],
    [#text(fill: slate, size: 8.5pt, period)],
  )
}

#let bul(body) = pad(left: 1em)[#text(size: 9pt)[• #body]]

// ── Header ────────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 26pt, weight: "bold", fill: dark)[Андрей Розанов]
  #v(0.2em)
  #text(size: 13pt, weight: "bold", fill: blue)[#t("role")]
  #v(0.3em)
  #text(size: 8.8pt)[
    #link("tel:+79940043995")[+7 994 004-39-95]
    #h(0.7em)#text(fill: slate)[|]#h(0.7em)
    #link("mailto:andrey.rozanov.vl@gmail.com")[andrey.rozanov.vl\@gmail.com]
    #h(0.7em)#text(fill: slate)[|]#h(0.7em)
    #link("https://github.com/RAprogramm")[github.com/RAprogramm]
    #h(0.7em)#text(fill: slate)[|]#h(0.7em)
    #link("https://crates.io/users/RAprogramm")[crates.io/users/RAprogramm]
    #h(0.7em)#text(fill: slate)[|]#h(0.7em)
    #link("https://t.me/Magistr_RA")[t.me/Magistr\_RA]
  ]
  #v(0.15em)
  #text(size: 8.5pt, fill: slate)[#t("location")]
]

// ── About ─────────────────────────────────────────────────────────────────────

#section(t("s_about"))
#text[#t("about")]

// ── Skills ────────────────────────────────────────────────────────────────────

#section(t("s_skills"))
#grid(
  columns: (auto, 1fr),
  column-gutter: 8pt,
  row-gutter: 5pt,
  text(weight: "bold", fill: dark, t("l_backend")),
  text("Rust (axum, actix-web, tokio, sqlx, tonic/gRPC, utoipa) · Go"),
  text(weight: "bold", fill: dark, t("l_frontend")),
  text("TypeScript · React · Rust (Yew.rs, Leptos) · WebAssembly"),
  text(weight: "bold", fill: dark, t("l_blockchain")),
  text("Solana (Anchor, QUIC) · TON · Solidity"),
  text(weight: "bold", fill: dark, t("l_db")),
  text("PostgreSQL · Redis · MongoDB"),
  text(weight: "bold", fill: dark, t("l_devops")),
  text("Kubernetes · Docker · GitHub Actions · NGINX · Prometheus"),
  text(weight: "bold", fill: dark, t("l_integr")),
  text("YooKassa · TON Wallet · ChangeNow · Telegram Bot/WebApp API"),
)

// ── Experience ────────────────────────────────────────────────────────────────

#section(t("s_exp"))

#job(t("j_lead"), "QBD", "10/2024 — ...")
#v(0.2em)
#text(size: 8.8pt, fill: slate)[#t("qbd_desc")]
#v(0.25em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  row-gutter: 0.4em,
  [
    #text(weight: "bold", size: 9pt)[#t("dex_title")]
    #bul[#t("dex_1")]
    #bul[#t("dex_2")]
  ],
  [
    #text(weight: "bold", size: 9pt)[#t("priz_title")]
    #bul[#t("priz_1")]
    #bul[#t("priz_2")]
  ],
  [
    #text(weight: "bold", size: 9pt)[#t("ordi_title")]
    #bul[#t("ordi_1")]
    #bul[#t("ordi_2")]
  ],
  [
    #text(weight: "bold", size: 9pt)[#t("batt_title")]
    #bul[#t("batt_1")]
    #bul[#t("batt_2")]
  ],
)
#v(0.2em)
#text(size: 8.5pt, fill: slate, style: "italic")[
  #t("stack_lbl") Rust · axum · PostgreSQL · Redis · React · TypeScript · Kubernetes · GitHub Actions
]

#v(0.7em)
#job(t("j_back"), "Smart Money", "06/2024 — 08/2024")
#v(0.15em)
#text(size: 8.8pt)[#t("sm_desc")]
#v(0.1em)
#text(size: 8.5pt, fill: slate, style: "italic")[#t("stack_lbl") Rust · axum · PostgreSQL]

#v(0.7em)
#job(t("j_back_sol"), "Cerberus Software", "04/2024 — 05/2024")
#v(0.15em)
#bul[#t("cerb_1")]
#bul[#t("cerb_2")]
#bul[#t("cerb_3")]
#v(0.1em)
#text(size: 8.5pt, fill: slate, style: "italic")[#t("stack_lbl") Rust · Solana · Anchor · QUIC]

#v(0.7em)
#job(t("j_full"), "Habdev", "03/2024")
#v(0.15em)
#bul[#t("hab2_1")]
#bul[#t("hab2_2")]
#v(0.1em)
#text(size: 8.5pt, fill: slate, style: "italic")[#t("stack_lbl") Rust · React · PostgreSQL · Docker · NGINX · GitHub Actions]

#v(0.7em)
#job(t("j_full"), "Aichel", "01/2024 — 02/2024")
#v(0.15em)
#bul[#t("aich_1")]
#bul[#t("aich_2")]
#v(0.1em)
#text(size: 8.5pt, fill: slate, style: "italic")[#t("stack_lbl") Rust · Yew.rs · WebAssembly · gRPC · MongoDB · Envoy]

#v(0.7em)
#job(t("j_back"), "Habdev", "06/2023 — 12/2023")
#v(0.15em)
#text(weight: "bold", size: 9pt)[#t("hab1_game")]
#bul[#t("hab1_g1")]
#bul[#t("hab1_g2")]
#text(weight: "bold", size: 9pt)[#t("hab1_agg")]
#bul[#t("hab1_a1")]
#v(0.1em)
#text(size: 8.5pt, fill: slate, style: "italic")[#t("stack_lbl") Go · Rust · Solidity · PostgreSQL]

// ── Open Source ───────────────────────────────────────────────────────────────

#section(t("s_oss"))
#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  row-gutter: 0.5em,
  [
    #text(weight: "bold", fill: dark, size: 9pt)[#t("oss_libs")]
    #v(0.3em)

    #link("https://crates.io/crates/telegram-webapp-sdk")[#text(weight: "bold")[telegram-webapp-sdk]]
    #h(0.3em)#text(fill: blue, size: 8pt)[★ 33]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_tg")]#v(0.4em)

    #link("https://github.com/RAprogramm/sql-query-analyzer")[#text(weight: "bold")[sql-query-analyzer]]
    #h(0.3em)#text(fill: blue, size: 8pt)[★ 20]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_sql")]#v(0.4em)

    #link("https://github.com/RAprogramm/entity-derive")[#text(weight: "bold")[entity-derive]]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_ent")]#v(0.4em)

    #link("https://crates.io/crates/masterror")[#text(weight: "bold")[masterror]]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_master")]#v(0.4em)

    #link("https://github.com/RAprogramm/solana-quic-client")[#text(weight: "bold")[solana-quic-client]]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_quic")]#v(0.4em)

    #link("https://github.com/RAprogramm/telegram-bot-template")[#text(weight: "bold")[telegram-bot-template]]
    #v(0.1em)#text(size: 8.8pt)[#t("lib_bot")]
  ],
  [
    #text(weight: "bold", fill: dark, size: 9pt)[#t("oss_tools")]
    #v(0.3em)

    #link("https://github.com/RAprogramm/RustManifest")[#text(weight: "bold")[RustManifest]]
    #h(0.3em)#text(fill: blue, size: 8pt)[★ 5]
    #v(0.1em)#text(size: 8.8pt)[#t("tool_rust")]#v(0.4em)

    #link("https://github.com/RAprogramm/cargo-quality")[#text(weight: "bold")[cargo-quality]]
    #v(0.1em)#text(size: 8.8pt)[#t("tool_quality")]#v(0.4em)

    #link("https://github.com/RAprogramm/rust-prod-diff-checker")[#text(weight: "bold")[rust-prod-diff-checker]]
    #v(0.1em)#text(size: 8.8pt)[#t("tool_diff")]#v(0.4em)

    #text(weight: "bold", fill: dark, size: 9pt)[#t("oss_sys")]
    #v(0.3em)

    #link("https://github.com/RAprogramm/micromap")[#text(weight: "bold")[micromap / emap / microstack]]
    #v(0.1em)#text(size: 8.8pt)[#t("sys_micro")]#v(0.4em)

    #link("https://crates.io/crates/cstring-array")[#text(weight: "bold")[cstring-array]]
    #v(0.1em)#text(size: 8.8pt)[#t("sys_cstr")]#v(0.4em)

    #link("https://github.com/RAprogramm/logi-mx")[#text(weight: "bold")[logi-mx]]
    #v(0.1em)#text(size: 8.8pt)[#t("sys_logi")]
  ],
)
#v(0.4em)
#text(weight: "bold", size: 9pt)[#t("contrib_lbl")]
#h(0.4em)
#text(size: 8.8pt)[#t("contrib_txt")]

// ── Education & Languages ─────────────────────────────────────────────────────

#section(t("s_edu"))
#grid(
  columns: (2fr, 1fr),
  column-gutter: 10pt,
  [
    #text(weight: "bold")[#t("edu_name")]
    #h(0.5em)
    #text(fill: slate, size: 8.5pt)[#t("edu_detail")]
  ],
  [
    #text(weight: "bold")[#t("lng_ru")] #t("lng_ru_v")
    #h(0.5em)
    #text(weight: "bold")[#t("lng_en")] #t("lng_en_v")
    #h(0.5em)
    #text(weight: "bold")[#t("lng_vi")] #t("lng_vi_v")
    #h(0.5em)
    #text(weight: "bold")[#t("lng_ko")] #t("lng_ko_v")
  ],
)

#v(0.8em)
#align(center)[#text(size: 7.5pt, fill: slate)[#t("footer")]]
