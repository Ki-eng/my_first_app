# my_first_app

A new Flutter project.
# My First App — Portfolio App

A beginner-friendly Flutter portfolio app built as a learning project. It demonstrates app customization, navigation between screens, a splash screen, custom fonts, and a basic responsive layout.

## Features

- Custom theme (teal color scheme) and custom typography (Poppins font)
- Splash screen with automatic transition to the home screen
- "About Me" second screen with button navigation
- Snackbar message button in the floating action button position
- Responsive layout that adapts between phone and tablet/large screens (600dp breakpoint)

## Installation

### Prerequisites

- Flutter SDK 3.x - see the [official install guide](https://docs.flutter.dev/get-started/install)
- A device or emulator (Android, iOS, Chrome, Windows, macOS, or Linux)
- Verify your setup:

```bash
flutter doctor
```

### Steps

1. **Clone the repository** (replace the URL with your own):

```bash
git clone https://github.com/your-username/my_first_app.git
cd my_first_app
```

2. **Install dependencies:**

```bash
flutter pub get
```

3. **Add the font files** (one-time setup): download [Poppins](https://fonts.google.com/specimen/Poppins) and place the TTFs in `assets/fonts/`:

```
assets/fonts/Poppins-Regular.ttf
assets/fonts/Poppins-Bold.ttf
```

4. **Run the app:**

```bash
flutter run
```

Tip: run on Chrome to test the responsive layout by resizing the browser window past 600px:

```bash
flutter run -d chrome
```

## Project Structure

```
lib/
├── main.dart            # Entry point: MaterialApp, theme (color + font), splash as home
├── splash_screen.dart   # Splash screen with 2s auto-navigation
├── home_screen.dart     # Home screen with responsive Row/Column layout
└── about_screen.dart    # About Me screen
```

### Task 1 — Project setup and customization

1. Created the app with `flutter create my_first_app` and navigated into the folder.
2. Changed the app name to **My First App** and the theme color to **teal** via `ColorScheme.fromSeed`.
3. Updated the AppBar title from "Flutter Demo Home Page" to **"Alex's Portfolio"**.
4. Removed the default counter and FloatingActionButton, replacing them with two `ElevatedButton`s:
   - **About Me** — navigates to the new screen with `Navigator.push` + `MaterialPageRoute`.
   - **Show Message** — shows a `SnackBar` when tapped.
5. Added a new screen, `AboutScreen` (`lib/about_screen.dart`), with an avatar, name, short bio, and contact rows.
6. Follow-up: the **Show Message** button was moved into the Scaffold's `floatingActionButton` slot, so it sits in the same position as the original FAB.

### Splash screen, custom fonts, responsiveness

1. **Splash screen** (`lib/splash_screen.dart`):
   - Shows a logo, app name, and loading indicator for 2 seconds.
   - Uses `Navigator.pushReplacement` so the back button can't return to the splash.
   - Includes a `mounted` check before navigating (safe async navigation).
2. **Custom fonts**:
   - Bundled Poppins (Regular + Bold at weight 700) in `assets/fonts/` and declared it in `pubspec.yaml`.
   - Applied app-wide with `fontFamily: 'Poppins'` in `ThemeData`.
3. **Responsiveness**:
   - Detects screen width with `MediaQuery` at the standard **600dp phone/tablet breakpoint**.
   - Wide screens: welcome text and the About Me button side by side in a `Row`; narrow screens: stacked in a `Column`.
4. **Refactoring**:
   - Moved `HomeScreen` out of `main.dart` into its own file to avoid a circular import with the splash screen.
   - Extracted reusable private widgets (`_WelcomeText`, `_AboutButton`, `_MessageButton`) so both layouts share the same code.




