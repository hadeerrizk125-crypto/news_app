# News Cloud App 📰

A dynamic news application built with **Flutter** that fetches and displays real-time news articles from a REST API. This project focuses on building a clean UI and managing asynchronous data fetching efficiently.

## 🚀 Key Features
*   **Live Headlines:** Fetches current news articles across multiple categories using the News API.
*   **Web View Integration:** Integrated `webview_flutter` to allow users to read full articles without leaving the app.
*   **Asynchronous Data Handling:** Efficiently manages API calls and loading states.
*   **Custom UI Components:** A sleek, responsive design featuring category sliders and news tiles.

## 🏗 Technical Implementation
This project emphasizes **clean code** and **modular design**:
*   **FutureBuilder Integration:** Utilized `FutureBuilder` to handle asynchronous operations, ensuring a smooth transition between loading, error, and data-ready states.
*   **Clean Architecture:** 
    *   **Models:** Custom models to map JSON data into Dart objects.
    *   **Services:** Separated API logic into a dedicated service layer for better maintainability.
    *   **Widgets:** Extracted reusable UI elements (like `NewsTile` and `CategoriesListView`) to keep the codebase DRY and organized.
*   **Dynamic UI:** Used `setState` for reactive UI updates within views.

## 🛠 Tech Stack
*   **Framework:** Flutter
*   **Language:** Dart
*   **API:** NewsAPI.org
*   **Core Concepts:** FutureBuilder, REST API Integration, Models & Services separation.
*   **Key Packages:** `dio`, `webview_flutter`, `cached_network_image`.