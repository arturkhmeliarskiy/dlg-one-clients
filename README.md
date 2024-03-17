# DLS-ONE-CLIENTS

## Подготовка проекта

### Подготовка проекта после скачивания

1. Установить плагин Makefile для IDE если требуется.
   Для Android Studio = Android Studio -> File -> Settings -> Plugins -> Makefile Language -> Install

2. Установить Flutter Version Management по инструкции
   [Flutter Version Managment Instruction](https://fvm.app/docs/getting_started/installation/) до
   пункта [Pub package](https://fvm.app/docs/getting_started/installation/#pub-package)
   `dart pub global activate fvm` делать не нужно так как это есть в команде под пунктом 3
   Если необходимо - прописать переменную в path (На винде это что-то
   типа `C:\Users\UserName\fvm\default\bin`)

3. В командной строке выполнить

```sh
make prepare
```

Команда делает следующее:

- Запускает flutter pub get для главного проекта и всех пакетов
- Активирует Flutter Version Management на нужную версию Flutter SDK, указанную в конфигах. Если
  версия не скачана - FVM предложит скачать и применить ее для проекта . Это может занять продолжительное время
- Активирует intl (для локализации)
- Запускает кодогенерацию в проекте и всех пакетах
- Запускает кодогенерацию для локализации и ассетов


4. Указать в IDE путь до Flutter SDK как [корень проекта]\.fvm\flutter_sdk

5. Для работы с Web в дебаге необходимо настроить Chrome Security - null Absent "authorization"
   header.
   Это гарантирует, что отсутствие заголовка "authorization" в запросах не вызовет проблем с
   безопасностью. Может быть полезно при работе с аутентификацией и авторизацией на стадии
   разработки. Делается следующим образом:

- Найти [flutter\bin\cache] и удалить файл: [flutter_tools.stamp]
  Удаление этого файла обеспечивает чистую среду для последующих операций с инструментами Flutter.
  Это может помочь избежать возможных конфликтов или проблем с совместимостью.
- Найти [flutter\packages\flutter_tools\lib\src\web] и открыть [chrome.dart]
- Найти '--disable-extensions'
  Данная опция отключает все расширения Chrome при запуске веб-приложения. Это делается для
  исключения возможных конфликтов с расширениями и обеспечения стабильности работы приложения.
- Добавить после него '--disable-web-security'
  Эта опция отключает механизмы безопасности, такие как CORS (Cross-Origin Resource Sharing), что
  позволяет разрабатывать и тестировать веб-приложения без ограничений на стадии разработки.
- Добавить '--ignore-certificate-errors'
  Эта опция позволяет игнорировать ошибки сертификатов SSL/TLS, что полезно при работе с
  самоподписанными сертификатами или недействительными сертификатами на стадии разработки.
- Добавить '--ignore-urlfetcher-cert-requests'
  Эта опция также игнорирует запросы сертификатов для URL-адресов, что может быть полезно при работе
  с неподтвержденными сертификатами.

6. Проект готов к работе, вы - восхитительны

7. Для дальнейшей работы изучите весь README.md и tech_talks (ссылка в пункте Ресурсы ниже)

### Подготовка проекта после обновления версии с GitLab

В командной строке выполнить

```sh
make update
```

Команда делает следующее:

- Запускает flutter pub get для главного проекта и всех дочерних пакетов
- Активирует Flutter Version Management на нужную версию Flutter SDK, указанную в конфигах. Если
  версия не скачана - FVM предложит скачать и применить ее для проекта. Это может занять
  продолжительное время.
- Запускает кодогенерацию в проекте и всех пакетах
- Запускает кодогенерацию для локализации и ассетов

## Работа с проектом

### Команды для работы с проектом

`make prepare`, `make update` описаны выше

```sh
make get
```

flutter pub get для проекта и всех дочерних пакетов

```sh
make activate-fvm
```

Активирует Flutter Version Management (FVM)

```sh
make install-fvm
```

Устанавливает версию Flutter для FVM из конфигов. Если версиит нет - скачивает, это может занять
продолжительное время

```sh
make pub-upgrade
```

flutter pub get и flutter pub upgrade для проекта и всех nested пакетов

```sh
make pub-upgrade-major
```

Аналогично команде выше для мажорных версий

```sh
make activate-intl
```

Активирует intl_utils

```sh
make gen-build
```

Кодогенерация без удаления конфликтов

```sh
make gen-build-delete
```

Кодогенерация с удалениями конфликтов

```sh
make gen-localization
```

Кодогенерация для локализации

```sh
make gen-watch
```

Кодогенерация watch

```sh
make gen-asset
```

Кодогенерация для asset-ов

```sh
make gen-clean
```

Удаление файлов кодогенерации

```sh
make run
```

flutter run

```sh
make git-ignore-update
```

Апдейт гитигнора

```sh
make build-android-apk
```

Генерирует релиз apk файл для андроида

```sh
make build-android-bundle
```

Генерирует релиз андроид бандл

```sh
make build-ios
```

Генерирует релиз ipa для iOS

```sh
make build-mac
```

Генерирует релиз для MacOS

```sh
make build-linux
```

Генерирует релиз для Linux

```sh
make build-web
```

Генерирует релиз для web

```sh
make clean
```

flutter clean для основного проекта и всех nested пакетов

### Если требуются выполнять другие команды

Обращение к командам flutter и dart идет через fvm
То есть вместо `flutter pub get` необходимо выполнять `fvm flutter pub get`
[Подробнее](https://fvm.app/docs/guides/running_flutter)

### Действия при изменениях проекта

#### Если добавился новый дочерний пакет

Пакет необходимо прописать в следующих командах makefile:

- [ ] get
- [ ] pub-upgrade-major
- [ ] pub-upgrade
- [ ] clean

Если пакету нужна кодогенерация то необходимо так же прописать ссылку на пакет в командах

- [ ] gen-build
- [ ] gen-build-delete
- [ ] gen-watch
- [ ] gen-clean

## Ресурсы

- [Общий GitLab](https://gitlab.shvetsov.tech/)
- [GitLab данного проекта](https://gitlab.shvetsov.tech/dls-one/dlg-one-clients)
- [Issue](https://gitlab.shvetsov.tech/dls-one/dlg-one-clients/-/issues)
- [Wiki](https://gitlab.shvetsov.tech/dls-one/dlg-one-clients/-/wikis/home)
- [Rest API](https://dls.shvetsov.tech/api/documentation)
- [Дизайн Desktop](https://www.figma.com/file/Ez2oIKQMBwWOvELrlWFXSq/DLS_One_Desktop?node-id=0-1&t=S43q89trOuqGhQUJ-0)
- [Дизайн Mobile](https://www.figma.com/file/0qEHrUYzjVbcUtVHfMHoCh/DLS_One_Mobile?node-id=0-1&t=wcOJcr1t6YCyUNm1-0)
- Результаты Tech Talks - лежат в корне проекта, папка [tech_talks]
