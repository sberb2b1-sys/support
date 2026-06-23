# iOS App — Support Landing

Одностраничный сайт поддержки iOS-приложения. Размещается на GitHub Pages.

## Локальный просмотр

Откройте `index.html` в браузере или запустите локальный сервер:

```bash
python3 -m http.server 8080
```

Затем откройте http://localhost:8080

## Настройка

Отредактируйте `index.html`:

- Название приложения (замените «iOS App»)
- Email поддержки (`support@example.com`)
- Ссылки на политику конфиденциальности и условия использования
- Тексты FAQ под ваше приложение

## Деплой на GitHub Pages

1. Создайте репозиторий на GitHub
2. Запушьте код
3. В Settings → Pages выберите **Deploy from a branch**, ветка `main`, папка `/ (root)`

Сайт будет доступен по адресу: `https://<username>.github.io/<repo>/`
