# Flutter E-Commerce UI

A modern and responsive **Flutter e-commerce UI** application showcasing a complete shopping experience.  
This project includes **splash, login, signup, welcome, home, cart, category, account, order screens**, and a **Bottom Navigation Bar** for smooth navigation between main sections.

## Features

- **Splash Screen:** Eye-catching launch screen with app branding.  
- **Authentication:** Login and Signup screens with smooth transitions.  
- **Welcome Screen:** Engaging intro for new users.  
- **Home Screen:** Browse featured products and promotions.  
- **Category Screen:** Easily explore product categories.  
- **Cart Screen:** View and manage selected products before checkout.  
- **Account Screen:** Access user profile and settings.  
- **Order Screen:** Track and review past orders.  
- **Bottom Navigation Bar:** Quick access to Home, Categories, Cart, Orders, and Account.  
- **Clean UI & Smooth Navigation:** Designed for optimal user experience.  

## video

https://github.com/user-attachments/assets/3b1fbf89-7f61-482a-89ea-a36b50d60bb6

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/flutter-ecommerce-ui.git

2. **Navigate to the project directory:**
    ```bash
    cd flutter-ecommerce-ui
3.  **Install dependencies:**
    ```bash
    flutter pub get
4.  **Run the app:**
    ```bash
    flutter run

## Dependencies

-**Flutter SDK**
-**flutter_svg**

## Project Structure

```text
lib/
 ├─ main.dart
 ├─ core/
 │   └─ resources/
 │      ├─ app_colors.dart
 │      ├─ app_field.dart
 │      ├─ app_images.dart
 ├─ features/
 │   └─ homeNav/
 │      └─ screens/
 │         └─ Category/
 │            ├─ category.dart
 │         └─ Home/
 │            ├─ HomeScreen.dart
 │         └─ Profile/
 │            ├─ profile.dart
 │         └─ cart/
 │            ├─ cardView.dart
 │         └─ orders/
 │            ├─ view.dart
 │      ├─ home_nav.dart
 │   └─ login/
 │      ├─ app_colors.dart
 │   └─ signup/
 │      ├─ app_colors.dart
 │   └─ splash/
 │      ├─ app_colors.dart
 │   └─ welcome/
 │      ├─ app_colors.dart
 │   └─ model/
 │      ├─ app_colors.dart
 ├─ home_page.dart


