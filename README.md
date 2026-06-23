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
./deploy.sh
```

### Вручную

1. Создайте репозиторий: [github.com/new?name=support](https://github.com/new?name=support)
2. Запушьте код:
   ```bash
   git push -u origin main
   ```
3. В **Settings → Pages** выберите источник **GitHub Actions**

Сайт: **https://sberb2b1-sys.github.io/support/**
