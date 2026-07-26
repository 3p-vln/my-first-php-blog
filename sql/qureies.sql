CREATE DATABASE blog_php;

CREATE TABLE post (
    post_id ini(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(225) NOT NULL,
    url_key VARCHAR(225) NOT NULL,
    image_path varchar(225) NULL,
    content TEXT DEFAULT NULL,
    description VARCHAR(225) DEFAULT NULL,
    published_date DATETIME NOT NULL,
    PRIMARY KEY (post_id),
    UNIQUE KEY url_key (url_key)
) ENGINE=InnoDB;

INSERT INTO post (title, url_key, content, description, published_date) VALUES ('Утренние заметки', 'morning-notes', 'Иногда самые интересные идеи приходят неожиданно. Этот текст служит примером наполнения карточки и демонстрирует, как может выглядеть запись с несколькими предложениями. Здесь нет скрытого смысла — только демонстрационный контент.', 'Пример описания первой записи.', '2026-07-27 09:15:00');
INSERT INTO post (title, url_key, content, description, published_date) VALUES ('Небольшое путешествие', 'small-journey', 'Каждое новое место оставляет свои впечатления. Даже короткая прогулка способна подарить новые эмоции, интересные фотографии и желание вернуться снова. Этот текст используется исключительно для тестирования отображения.', 'Демонстрационная запись о путешествии.', '2026-07-27 11:45:00');
INSERT INTO post (title, url_key, content, description, published_date) VALUES ('Вечер за чашкой кофе', 'evening-coffee', 'Спокойный вечер располагает к размышлениям и планированию будущих дел. Несколько строк текста помогают проверить отображение длинных абзацев, переносов и общего оформления карточек в приложении.', 'Тестовый текст для третьей карточки.', '2026-07-27 18:30:00');
