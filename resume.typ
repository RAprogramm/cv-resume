// SPDX-FileCopyrightText: 2026 RAprogramm <andrey.rozanov.vl@gmail.com>
// SPDX-License-Identifier: MIT

#set page(
  paper: "a4",
  margin: (left: 15mm, right: 15mm, top: 15mm, bottom: 15mm),
)

#set text(
  font: "DejaVu Sans",
  size: 10pt,
  lang: "ru",
)

#set par(leading: 0.6em)

// Color palette
#let primary-color = rgb("#2563eb")
#let secondary-color = rgb("#64748b")
#let accent-color = rgb("#0f172a")

// Helper functions
#let section-title(title) = {
  v(0.8em)
  text(
    size: 14pt,
    weight: "bold",
    fill: primary-color,
    title
  )
  line(length: 100%, stroke: (paint: primary-color, thickness: 1.5pt))
  v(0.4em)
}

#let job-title(pos, company, dates) = {
  text(weight: "bold", size: 11pt, pos)
  h(0.5em)
  text(fill: secondary-color, style: "italic", company)
  h(0.5em)
  text(fill: secondary-color, weight: "regular", size: 9pt, dates)
}

#let skill-group(title, items) = {
  text(weight: "bold", title)
  h(0.5em)
  text(items)
}

// Header
#align(center)[
  #text(size: 24pt, weight: "bold", fill: accent-color)[Андрей Розанов]
  #v(0.2em)
  #text(size: 14pt, weight: "medium", fill: primary-color)[Rust Software Engineer]
]

#align(center)[
  #text(size: 9pt)[
    #link("tel:+79940043995")[+7 (994) 004-39-95] #h(1em)
    | #h(1em)
    #link("mailto:andrey.rozanov.vl@gmail.com")[`andrey.rozanov.vl@gmail.com`] #h(1em)
    | #h(1em)
    #link("https://github.com/RAprogramm")[GitHub] #h(1em)
    | #h(1em)
    #link("https://crates.io/users/RAprogramm")[crates.io] #h(1em)
    | #h(1em)
    #link("https://t.me/Magistr_RA")[Telegram]
  ]
]

#align(center)[
  #text(size: 9pt, fill: secondary-color)[
    Вьетнам #h(0.5em) | #h(0.5em) Удалённо
  ]
]

// About
#section-title("О себе")
Fullstack-разработчик с фокусом на Rust и высоконагруженные системы. 
4+ года коммерческого опыта в backend, web-приложениях и блокчейн-решениях. 
Автор open source библиотек (6,000+ скачиваний на crates.io). 
Maintainer в HyDE Project. Контрибьютор в проекты Zerocracy (Егор Бугаенко). 
Веду проекты полного цикла: от архитектуры до деплоя в Kubernetes.

// Skills
#section-title("Навыки")
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10mm,
  row-gutter: 0.5em,
  [
    #skill-group("Backend:", "Rust (axum, actix-web, tokio, sqlx, tonic/gRPC, utoipa), Go")
    #v(0.3em)
    #skill-group("Frontend:", "TypeScript, React, Rust (Yew.rs, Leptos), WebAssembly")
    #v(0.3em)
    #skill-group("Blockchain:", "Solana (Anchor, QUIC), TON, Solidity")
  ],
  [
    #skill-group("Базы данных:", "PostgreSQL, Redis, MongoDB")
    #v(0.3em)
    #skill-group("DevOps:", "Kubernetes, Docker, GitHub Actions, NGINX, Prometheus")
    #v(0.3em)
    #skill-group("Интеграции:", "YooKassa, TON Wallet, ChangeNow, Telegram Bot/WebApp API")
  ]
)

// Experience
#section-title("Опыт работы")

#job-title("Lead Software Engineer / CTO", "QBD", "Октябрь 2024 -- настоящее время")
#text(size: 9pt, fill: secondary-color)[Продуктовая разработка + аутсорс для стартапов. Единственный разработчик: backend, frontend, DevOps, CI/CD, иногда дизайн. Менторинг стажёров (2 набора по 2 человека).]
#v(0.3em)
#text(weight: "semibold")[DEX Trading Terminal:]
#text(size: 9pt)[
  - Интеграция с Hyperliquid DEX для торговли деривативами
  - Реал-тайм обновление данных через WebSocket
  - Управление ордерами и позициями
]
#v(0.3em)
#text(weight: "semibold")[Prizoria -- платформа событий:]
#text(size: 9pt)[
  - Система розыгрышей с интеграцией платёжных систем (YooKassa, TON Wallet)
  - Telegram Mini App для участников
  - Автоматизация выплат победителям
]
#v(0.3em)
#text(weight: "semibold")[Ordinotes -- трекер Bitcoin Ordinals:]
#text(size: 9pt)[
  - Интеграция с Magic Eden API для отслеживания NFT на Bitcoin
  - Агрегация данных с множества кошельков, расчёт total balance
  - Отображение коллекций, цен, графиков по каждому предмету
  - Рефакторинг legacy Java backend, миграция на Rust
  - Проект представлен на Ordinals Paris 2025
]
#v(0.3em)
#text(weight: "semibold")[Petter -- социальная сеть для владельцев животных:]
#text(size: 9pt)[
  - Паспорта питомцев с историей вакцинаций
  - Интерактивная карта приютов
  - Маркетплейс товаров, лента событий
]
#v(0.3em)
#text(weight: "semibold")[Battery -- мультичейн агрегатор whitelists и NFT:]
#text(size: 9pt)[
  - Доступ к whitelists, NFT и токенам на BTC, ETH, SOL, Abstract
  - Подключение к существующему проекту (Python + Vue), доработка фронтенда
  - Быстрое погружение в незнакомую кодовую базу
]
#v(0.3em)
#text(weight: "semibold")[Инфраструктура:]
#text(size: 9pt)[
  - Настройка Kubernetes кластеров для production
  - CI/CD пайплайны через GitHub Actions
  - Мониторинг через Prometheus
]
#text(size: 9pt, style: "italic")[Стек: Rust, axum, PostgreSQL, Redis, React, TypeScript, Kubernetes, GitHub Actions]

#v(0.8em)
#job-title("Backend Developer", "Smart Money", "Июнь -- Август 2024")
#text(size: 9pt, fill: secondary-color)[Разработка серверной части финтех-приложения. REST API, интеграция с платёжными системами.]
#text(size: 9pt, style: "italic")[Стек: Rust, axum, PostgreSQL]

#v(0.8em)
#job-title("Backend Developer (Solana)", "Cerberus Software", "Апрель -- Май 2024")
#text(size: 9pt, fill: secondary-color)[
  - Разработал on-chain middleware для Raydium DEX -- смарт-контракт поверх существующего контракта на Anchor
  - Реализовал QUIC-клиент для низколатентной отправки транзакций в сеть Solana
  - Исследовал лимиты RPC-нод и способы оптимизации throughput
]
#text(size: 9pt, style: "italic")[Стек: Rust, Solana, Anchor, QUIC]

#v(0.8em)
#job-title("Fullstack Developer", "Habdev", "Март 2024")
#text(size: 9pt, fill: secondary-color)[
  - Административные панели на Rust (backend) + React (frontend)
  - Полный цикл деплоя: GitHub Actions -> Docker -> сервер
  - Настройка NGINX как reverse proxy
]
#text(size: 9pt, style: "italic")[Стек: Rust, React, PostgreSQL, Docker, NGINX, GitHub Actions]

#v(0.8em)
#job-title("Fullstack Developer", "Aichel", "Январь -- Февраль 2024")
#text(size: 9pt, fill: secondary-color)[
  - SPA на Yew.rs, компилируемый в WebAssembly
  - Интеграция с Rust backend через gRPC (tonic)
  - Настройка Envoy как gRPC-Web proxy
]
#text(size: 9pt, style: "italic")[Стек: Rust, Yew.rs, WebAssembly, gRPC, MongoDB, Envoy]

#v(0.8em)
#job-title("Backend Developer", "Habdev", "Июнь -- Декабрь 2023")
#text(weight: "semibold")[Игровая платформа:]
#text(size: 9pt)[
  - Игровые механики для настольных игр (шахматы, шашки, го, реверси) на Go и Rust
  - Матчмейкинг, хранение статистики в PostgreSQL
  - Solidity смарт-контракты для внутриигровой экономики
]
#text(weight: "semibold")[Агрегатор криптоданных:]
#text(size: 9pt)[
  - Сбор данных с бирж, расчёт метрик
  - REST API для фронтенда
]
#text(size: 9pt, style: "italic")[Стек: Go, Rust, Solidity, PostgreSQL]

// Open Source
#section-title("Open Source (40+ репозиториев на GitHub)")
#text(size: 9pt, fill: secondary-color)[6,000+ downloads on crates.io]

#text(weight: "bold")[Библиотеки и инструменты:]
#v(0.2em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 0.4em,
  [
    #text(weight: "semibold")[telegram-webapp-sdk] (33 stars)
    #text(size: 9pt)[Type-safe Rust обёртка для Telegram Web Apps API]
    
    #text(weight: "semibold")[sql-query-analyzer] (20 stars)
    #text(size: 9pt)[Статический анализ SQL + LLM-оптимизация. SARIF output, CI/CD ready]
    
    #text(weight: "semibold")[entity-derive]
    #text(size: 9pt)[Derive-макрос: генерация DTO, репозиториев, SQL, REST, OpenAPI]
    
    #text(weight: "semibold")[masterror]
    #text(size: 9pt)[Framework-agnostic типы ошибок для Rust-сервисов]
    
    #text(weight: "semibold")[solana-quic-client]
    #text(size: 9pt)[Низколатентный клиент для Solana через QUIC протокол]
    
    #text(weight: "semibold")[telegram-bot-template]
    #text(size: 9pt)[Production-ready шаблон для Telegram ботов на teloxide]
  ],
  [
    #text(weight: "bold")[Инструменты разработки и стандарты:]
    
    #text(weight: "semibold")[RustManifest] (5 stars)
    #text(size: 9pt)[Стандарты кодирования для Rust команд: форматирование, линтинг, CI/CD]
    
    #text(weight: "semibold")[cargo-quality]
    #text(size: 9pt)[Анализатор качества Rust кода с встроенными стандартами]
    
    #text(weight: "semibold")[rust-prod-diff-checker]
    #text(size: 9pt)[AST-анализ для контроля размера PR: разделение production/test кода]
    
    #text(weight: "bold")[Высокопроизводительные структуры данных:]
    
    #text(weight: "semibold")[micromap / emap / microstack]
    #text(size: 9pt)[Быстрейшие альтернативы HashMap/Vec для малых коллекций, zero-heap]
    
    #text(weight: "semibold")[cstring-array]
    #text(size: 9pt)[Safe zero-copy обёртка для передачи строк в C FFI (`char**`)]
    
    #text(weight: "bold")[Системное программирование:]
    
    #text(weight: "semibold")[gossip-p2p] (4 stars)
    #text(size: 9pt)[P2P сеть с gossip протоколом]
    
    #text(weight: "semibold")[logi-mx]
    #text(size: 9pt)[Драйвер и конфигуратор для Logitech MX мышей под Linux]
  ]
)

#v(0.4em)
#text(weight: "bold")[Контрибуты в сообщество:]
#text(size: 9pt)[
  - HyDE Project -- Maintainer (Rice Team), 16+ тем для Hyprland
  - Zerocracy / Objectionary -- Оплачиваемые контрибуты: sodg.rs, phie (Егор Бугаенко)
]

// Education
#section-title("Образование")
#text(weight: "bold")[ВФ РТА -- Юридический факультет]
#text(size: 9pt, fill: secondary-color)[неоконченное высшее, 2013]

// Languages
#section-title("Языки")
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10mm,
  [
    #text(weight: "semibold")[Русский:] родной
  ],
  [
    #text(weight: "semibold")[Английский:] B2
  ]
)
#text(weight: "semibold")[Корейский:] A1

#v(1em)
#align(center)[
  #text(size: 8pt, fill: secondary-color)[
    Резюме обновлено: апрель 2026
  ]
]
