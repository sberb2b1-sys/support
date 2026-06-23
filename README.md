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

### Быстрый способ (с GitHub CLI)

```bash
# Установите gh: https://cli.github.com/
./deploy.sh ios-support
```

### Вручную

1. Создайте репозиторий на [github.com/new](https://github.com/new)
2. Привяжите remote и запушьте:
   ```bash
   git remote add origin https://github.com/YOUR_USER/ios-support.git
   git push -u origin main
   ```
3. В **Settings → Pages** выберите источник **GitHub Actions**

Сайт будет доступен по адресу: `https://<username>.github.io/<repo>/`
