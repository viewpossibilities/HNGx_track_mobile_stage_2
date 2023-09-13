# CV App (HNGX MOBILE TRACK INTERSHIP PROJECT)

Appetize Link:
https://appetize.io/app/hqhtot2ondwnyl6c7f2wpsf7um

This is a Flutter/Dart project for a CV (Curriculum Vitae) application. The app allows users to view and edit their personal information and bio. Here's a comprehensive README to help you understand and work with this project.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Contributing](#contributing)


## Introduction

This Flutter/Dart project is a simple CV (Curriculum Vitae) app that displays personal information and a bio. It consists of two main screens: `CVView` and `EditCVView`.

- `CVView`: This screen displays the user's full name, Slack username, GitHub handle, and a brief bio. Users can edit this information by navigating to the `EditCVView` screen.

- `EditCVView`: This screen allows users to edit their personal information and bio. Changes made here are reflected in the `CVView`.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install): The Flutter framework for building mobile apps.

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:

   ```bash
   cd cv_app
   ```

3. Run the app using Flutter:

   ```bash
   flutter run
   ```

   This will launch the CV app on an emulator or connected device.

## Project Structure

The project structure is organized as follows:

- `lib/`: Contains the Dart source code for the application.
  - `main.dart`: The entry point of the application. It defines the `CVApp` and `CVView` widgets.
  - `edit_cv_view.dart`: Defines the `EditCVView` widget for editing user information.
- `pubspec.yaml`: The Flutter package configuration file that specifies dependencies and assets.

## Usage

### CVView

- The `CVView` screen displays the user's personal information and bio.
- Users can tap the "Edit CV" button in the app bar to edit their information.

### EditCVView

- The `EditCVView` screen allows users to edit their personal information.
- Users can edit their full name, Slack username, GitHub handle, and bio.
- After making changes, users can tap the "Save" button to save their edits.

## Contributing

Contributions to this project are welcome. Here are some ways you can contribute:

- Report bugs or issues by creating [GitHub issues](https://github.com/viewpossibilities/cv_app/issues).
- Submit pull requests to fix bugs or add new features.
