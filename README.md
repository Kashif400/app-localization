# 🌍 Flutter Localization with ARB Files

This guide demonstrates how to implement localization in a Flutter app using the `intl` and ARB files. It allows you to easily support multiple languages.

---

## 🛠️ Setup Localization in Flutter

### 1. Add Dependencies

Update your `pubspec.yaml` with the necessary dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: ^latest-version
  shared_preferences: ^2.3.5
  provider: ^6.1.2

flutter:
  generate: true

### 2. Create directory and file
route directory
│   lib/
│   ├── l10n/
│   │   ├── app_en.arb
│   │   ├── app_es.arb
│   │   ├── app_ur.arb
│   │   
├── l10n.yaml



## ARB File Contents

### `app_en.arb` (English)

```json
{
  "helloWorld": "Hello world"
}

### `app_ur.arb` (Urdu)

```json
{
  "helloWorld":"ہیلو دنیا"
}

### `app_es.arb` (spanish)

```json
{
	"helloWorld":"Hola Mundo"
}

## `l10n.yaml` Configuration

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart


## Terminal Command

To generate localization files, run the following command:

```bash
flutter gen-l10n
