---
title: Start
type: first_page
homepage: true
---

Cinnamon - является оригинальной графической средой (desktop environment) 
для [Linux Mint](http://linuxmint.com/).

Данный проект русскоязычной документации по Linux Mint Cinnamon полностью базируется 
на книге Алексея Федорчука aka [Alv](http://alv.me/): 
[Linux Mint и его Cinnamon](http://alv.me/?page_id=1627#lmce)

Читать:

* [Linux Mint Cinnamon (17.1 Rebecca)](/ru/17-1-Rebecca/index.html)


Суть данного проекта:

* предоставление актуальной и легко сопровождаемой документации по Linux Mint Cinnamon
* консолидация людей работающих на данной ОС

Для этого:

* поднятие генерации html на базе системы генерации [Jekyll](http://jekyllrb.com/)
* дизайн с адаптивной версткой (просмотр на мобильных устройствах)
* перевод книги в MarkDown
* выкладывание на github
* создание для каждой версии Cinnamon - отдельной ветки
* возможность добавления других языков (не только русского)

Сделано:

* создан базовый код и адаптирован html шаблон для Jekyll
* исходный код текста вынесен в отдельный репозиторий (для каждого языка)
* добавлена ветка для 17.1 версии
* оригинальная html книга разбита на html фрагменты по главам
* частично переведены главы в MarkDown

ToDo:

* обновить Jekyll (c 2.5.3 на 3.0.1)
* перенести картинки в github
* перевести все главы книги в MarkDown
* закончить по версии Cinnamon 17.1
* "вычистить" html/css тему от лишних артефактов
* возможность навигации между страницами
* добавить ветки 17.2/17.3 - и актуализировать информацию для этих версий (текст, картинки)
* вынесение русскоязычных строк из основного конфиг файла в отдельный конфиг файл (в папке `ru`)

Структура папок:

* `linuxmint-cinnamon` (сюда генерируется html контент)
* `linuxmint-cinnamon-jekyll` (здесь html/css/js тема, шаблоны, конфиги для Jekyll и симлинк на контент)
* `linuxmint-cinnamon-ru-17-1-Rebecca` (здесь находится контент, согласно языку и версии-ветка)

Исходный код:

* [https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-jekyll](https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-jekyll)
* [https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-ru](https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-ru)

Установка и работа:

* устанавливается [Jekyll](http://jekyllrb.com/) (сейчас 2.5.3 версия)
* создаются папки, и выкачиваются соотв. git репозитории
* создаётся симлинк на контент (из папки с jekyll проектом)
* стартуется `Jekyll`
* генерирует код в `linuxmint-cinnamon` папку
* браузером открывается локальный веб-сервер поднятый `Jekyll` - и просматривается сгенерированный контент
* редактируется шаблон или контент
* `Jekyll` - автоматически перегенерирует папку (секунд 5)
* сгенерированный html выкладывается в репозиторий [https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-manual.github.io](https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-manual.github.io)
* и становится (автоматически) доступен по адресу [http://linuxmint-cinnamon-manual.github.io/](http://linuxmint-cinnamon-manual.github.io/)

Конфигурационные файлы:

* основной конфиг для Jekyll - `_config.yml`
* `_data/sidebar_doc.yml` - левая навигационная панель
* папки `_includes` и `_layouts` содержат html шаблоны (в формате [Liquid](https://github.com/Shopify/liquid))
* папки `css`, `fonts`, `images`, `js` - содержат стилевое оформление (за основу была взята [эта тема](http://idratherbewriting.com/documentation-theme-jekyll/))

Содержимое:

* содержимое находится в папке `ru`, и соответствующей версии подпапке (сейчас `17-1-Rebecca`)
* для того чтобы отображение и содержимое не пересекались - всё содержимое книги вынесено в [отдельный репозиторий](https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-ru), 
но т.к. для Jekyll всё содержимое должно быть внутри - сделан симлинк изнутри Jekyll папки, на папку с
содержимым книги 
* так же для того чтобы можно было сопровождать новые версии - для каждой версии планируется одноимённая ветка (branch), 
сейчас есть ветка `17-1-Rebecca`, далее будет `17-2-Rafaela` и т.п. Таким образом все фиксы можно легко 
"мержить" из 17.1 в 17.2 (17.3), и так же добавлять новый текст в новых версиях (на базе предыдущего контента).
* вкратце инструкция по настройке папок [здесь](https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-jekyll/blob/master/README.ru.md)

Обсуждение:

* гугл группа [linuxmint2ru](https://groups.google.com/forum/#!forum/linuxmint2ru)