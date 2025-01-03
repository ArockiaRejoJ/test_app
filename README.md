# Arockia Rejo - Test App

## Getting Started

HomeScreen UI with Nested Scrolling
This Flutter project demonstrates a responsive and interactive Home Screen UI featuring nested scrolling, tab navigation, and dynamic widgets such as Rides, Stories, Market, and Garage.


Features
Dynamic AppBar: Custom gradient AppBar with icons and buttons.
Event Banners: Highlighted event sections with an interactive "Register Now" button.
Tab Navigation: Switch between different tabs (Riders, Stories, Market, Garage) with dynamic content rendering.
Nested Scrolling: Smooth scrolling between parent and child scroll views, with intelligent locking based on the current tab.
Custom Widgets: Modular CustomText, RidesContainer, and StoriesContainer widgets for reusable UI components.
Responsive Design: Utilizes flutter_screenutil for screen size adaptability.
Screenshots
Overview
The HomeScreen includes:

Event Highlights: A visual card for event promotion.
Tab-Based Content:
Rides: List of ride events.
Stories: Placeholder content with dummy text.
Market & Garage: Colored placeholders for demonstration.
Screenshots:
The image shown above represents the following views:
![InShot_20250103_235804824](https://github.com/user-attachments/assets/681b99a5-0dfc-499a-985c-8669f58c5038)

Rides Section with event details.
Stories Section with dummy content.
Market Section with a placeholder.
Garage Section with placeholder.
Project Folder Structure
bash
Copy code
lib/
├── constants/
│   └── constants.dart       # Color and style constants.
├── widgets/
│   ├── custom_text.dart     # Custom text widget for styled text.
│   ├── rides_container.dart # Card layout for ride events.
│   ├── stories_container.dart # Card layout for story events.
├── screens/
│   └── home_screen.dart     # Main HomeScreen implementation.
Usage
Clone the repository:
bash
Copy code
git clone <repository-url>
cd <project-folder>
Install dependencies:
bash
Copy code
flutter pub get
Run the project:
bash
Copy code
flutter run
Packages Used
flutter_screenutil: For responsive UI design.
flutter: Base framework.
