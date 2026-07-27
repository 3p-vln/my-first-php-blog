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

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Утренние заметки',
                'morning-notes',
                'public/images/morning.jpg',
                'Иногда самые интересные идеи приходят неожиданно. Этот текст служит примером наполнения карточки и демонстрирует, как может выглядеть запись с несколькими предложениями. Здесь нет скрытого смысла — только демонстрационный контент.',
                'Пример описания первой записи.',
                '2026-07-27 09:15:00'
            );
INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Небольшое путешествие',
                'small-journey',
                'public/images/journey.jpg',
                'Каждое новое место оставляет свои впечатления. Даже короткая прогулка способна подарить новые эмоции, интересные фотографии и желание вернуться снова. Этот текст используется исключительно для тестирования отображения.',
                'Демонстрационная запись о путешествии.',
                '2026-07-27 11:45:00'
            );
INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Вечер за чашкой кофе',
                'evening-coffee',
                'public/images/coffee.jpg',
                'Спокойный вечер располагает к размышлениям и планированию будущих дел. Несколько строк текста помогают проверить отображение длинных абзацев, переносов и общего оформления карточек в приложении.',
                'Тестовый текст для третьей карточки.',
                '2026-07-27 18:30:00'
            );
INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Закат над городом',
                'sunset-city',
                'public/images/sunset.jpg',
                'Вечерний город постепенно погружается в мягкий свет фонарей. Прохожие спешат по своим делам, а на улицах становится заметно спокойнее. Этот текст используется как демонстрационный пример для наполнения базы данных.',
                'Тестовая запись о вечернем городе.',
                '2026-07-28 19:10:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'День в библиотеке',
                'day-library',
                'public/images/library.jpg',
                'Тихая атмосфера библиотеки помогает сосредоточиться и спокойно провести несколько часов за чтением. Полки с книгами, удобные столы и мягкий свет создают комфортную обстановку для работы и отдыха.',
                'Демонстрационная запись о библиотеке.',
                '2026-07-29 14:20:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Прогулка после дождя',
                'walk-after-rain',
                'public/images/rain.jpg',
                'После дождя воздух становится особенно свежим, а улицы отражают свет витрин и фонарей. Неспешная прогулка позволяет отвлечься от повседневных забот и просто насладиться окружающей атмосферой.',
                'Пример записи с нейтральным содержанием.',
                '2026-07-30 17:45:00'
            );
INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Осенний парк',
                'autumn-park',
                'public/images/autumn.jpg',
                'Осенью парк преображается благодаря ярким оттенкам листвы. Шелест деревьев, прохладный воздух и неспешные прогулки создают особую атмосферу, которая располагает к спокойному отдыху.',
                'Демонстрационная запись об осеннем парке.',
                '2026-08-07 15:10:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Домашняя выпечка',
                'homemade-bakery',
                'public/images/bakery.jpg',
                'Свежая домашняя выпечка наполняет кухню приятным ароматом и создает ощущение уюта. Даже простой рецепт может стать отличным поводом собраться всей семьей за одним столом.',
                'Пример записи о домашней выпечке.',
                '2026-08-08 10:35:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Звездное небо',
                'starry-sky',
                'public/images/stars.jpg',
                'Ясной ночью можно увидеть множество звезд и созвездий. Вдали от городских огней небо выглядит особенно впечатляюще и позволяет по-настоящему почувствовать масштаб окружающего мира.',
                'Демонстрационная запись о ночном небе.',
                '2026-08-09 22:15:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Мастерская художника',
                'artist-workshop',
                'public/images/workshop.jpg',
                'В мастерской художника всегда царит творческая атмосфера. Кисти, краски, наброски и готовые полотна рассказывают историю каждого нового произведения.',
                'Пример записи о творческой мастерской.',
                '2026-08-10 13:50:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Поход в горы',
                'mountain-hike',
                'public/images/mountains.jpg',
                'Подъем по горным тропам требует усилий, но открывающиеся виды полностью оправдывают затраченное время. Чистый воздух и тишина делают путешествие особенно запоминающимся.',
                'Демонстрационная запись о горном походе.',
                '2026-08-11 08:20:00'
            );

INSERT INTO post (title, url_key, image_path, content, description, published_date) VALUES (
                'Ночной мегаполис',
                'night-metropolis',
                'public/images/city-night.jpg',
                'Ночью большие города приобретают совершенно иной облик. Свет небоскребов, движение автомобилей и яркие вывески создают ощущение непрерывной жизни, которая не останавливается даже после полуночи.',
                'Пример записи о ночном городе.',
                '2026-08-12 21:40:00'
            );