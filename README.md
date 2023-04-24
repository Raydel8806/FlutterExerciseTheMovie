# Flutter Exercise The Movie

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Flutter Exercise The Movie
---

# This is a mobile application built with Flutter that consumes the API provided by https://www.themoviedb.org/. The app displays a list of popular movies and allows users to view the details of each movie.

## Objective
The goal of this project is to create a mobile application using Flutter that consumes the endpoints exposed through a public API for developers. The application should display a list of the most popular movies and allow users to access the details of each movie. A state manager should be used to facilitate the structuring of data. The source code should be uploaded to Github with a corresponding Readme.md file that provides instructions for deploying and testing the application.
 

## Getting Started 🚀

Installation and Usage

1. Clone the repository.
2. In the terminal, navigate to the project directory and run flutter pub get to install the 
   dependencies.
3. Update a assets/.env file in the root directory 
4. This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

---
## Screenshots
<img width="260" alt="Screenshot_20230423_183333" src="https://user-images.githubusercontent.com/81862291/233869828-05788112-dcdc-4279-9e75-526ed2003c9b.png"> 
<img width="260" alt="Screenshot_20230423_184543" src="https://user-images.githubusercontent.com/81862291/233870278-1263269e-0283-4794-9a3c-7ccecb8bb985.png">



## Conclusion
This application provides a simple way for users to view popular movies and their details. The use of functional programming with dependency injection and BLoC makes the code easier to understand and maintain.
 

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
