# Socially - HaveBreak Social Media App (Flutter Task)

## Project Overview
Socially is a mobile social media application developed for HaveBreak company using Flutter. The app provides a modern, responsive platform for social interactions and content sharing.

## Project Structure
```
socially/
│
├── app/                    # Main application directory
│   ├── android/            # Android-specific configurations
│   ├── ios/                # iOS-specific configurations
│   ├── lib/                # Core application source code
│   │   ├── components/     # Reusable UI components
│   │   ├── models/         # Data models
│   │   ├── screens/        # Individual app screens
│   │   ├── services/       # Backend and API services
│   │   └── main.dart       # Application entry point
│   │
│   └── test/               # Unit and widget tests
│
├── ui_components/          # Shared UI component library
└── pubspec.yaml            # Project dependencies and configuration
```

## Key Features
- Home Post Feeds
- Home Stories Feeds

## Development Setup
1. Ensure Flutter SDK is installed
2. Run `flutter pub get` to install dependencies
3. Use `flutter run` to launch the app

## Build and Deployment
- Android: `flutter build apk`
- iOS: `flutter build ios`

## Technologies
- Flutter
- Dart
- State Management: Cubit
- Backend: Supabase

