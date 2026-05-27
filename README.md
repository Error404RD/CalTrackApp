````markdown
# CalTrack

A modern calorie tracking mobile application built natively for iOS using SwiftUI and SwiftData.

CalTrack helps users calculate their daily calorie goals based on personal metrics and track their daily calorie intake through a clean and modern experience.

---

# Features

- Daily calorie calculation
- Personalized onboarding flow
- Local data persistence using SwiftData
- Reactive SwiftUI architecture
- Dark modern UI inspired by the “Deep Sea” palette
- Profile management
- Automatic age calculation from birth date
- Real-time remaining calorie tracking
- Fully native iOS experience

---

# Tech Stack

| Technology | Purpose |
|---|---|
| Swift | Main programming language |
| SwiftUI | Declarative UI framework |
| SwiftData | Local persistence |
| Xcode | Development environment |

---

# Architecture

The project follows a clean and scalable structure:

```text
CalTrack
│
├── Models
├── Views
├── Services
├── Utils
│   └── Theme
```

---

# Project Structure

## Models

Contains application data models.

Example:
- UserProfile

---

## Views

Contains all SwiftUI screens and reusable UI components.

Example:
- RootView
- OnboardingView
- HomeView

---

## Services

Contains business logic and calculations.

Example:
- CaloriesCalculatorService

---

## Utils

Contains helpers, constants, and theme configuration.

Example:
- AppColors

---

# Current Functionality

## Onboarding

The user provides:
- Name
- Birth date
- Weight
- Height
- Gender
- Activity level

All data is stored locally on the device.

---

## Home Dashboard

Displays:
- Daily calorie target
- Consumed calories
- Remaining calories

---

# Calorie Calculation

CalTrack currently uses the Mifflin-St Jeor Equation to estimate daily calorie needs.

Male:

```text
BMR = (10 × weight) + (6.25 × height) − (5 × age) + 5
```

Female:

```text
BMR = (10 × weight) + (6.25 × height) − (5 × age) − 161
```

The result is multiplied by the user's activity level.

---

# Theme

The app uses a custom design system called **Deep Sea**.

| Color | Hex |
|---|---|
| Ink Black | #0d1b2a |
| Prussian Blue | #1b263b |
| Dusk Blue | #415a77 |
| Lavender Grey | #778da9 |
| Alabaster Grey | #e0e1dd |

---

# Future Features

- Meal tracking
- Food history
- Daily statistics
- Progress charts
- HealthKit integration
- Weight progress tracking
- Notifications and reminders
- Custom goals
- Multi-platform support

---

# Installation

Clone the repository:

```bash
git clone https://github.com/Error404RD/CalTrackApp.git
```

Open the project:

```bash
open CalTrack.xcodeproj
```

Run the app using:

```text
⌘ + R
```

---

# Requirements

- macOS
- Xcode 16+
- iOS 18+

---

# Author

Developed by Jose Miguel Lopez.

GitHub:
https://github.com/Error404RD
````
