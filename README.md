<div align="center">

# 🌊 CalTrack

### Modern Calorie Tracking App for iOS

Built with SwiftUI & SwiftData

<img src="https://img.shields.io/badge/Swift-5-orange?style=for-the-badge&logo=swift" />
<img src="https://img.shields.io/badge/iOS-18+-black?style=for-the-badge&logo=apple" />
<img src="https://img.shields.io/badge/SwiftUI-Native-blue?style=for-the-badge" />
<img src="https://img.shields.io/badge/SwiftData-Persistence-green?style=for-the-badge" />

</div>

---

# ✨ Overview

CalTrack is a modern calorie tracking application designed for iOS using native Apple technologies.

The app helps users:

- Calculate daily calorie needs
- Track calorie consumption
- Monitor remaining calories
- Store profile data locally
- Experience a premium modern UI

---

# 📱 Features

- ✅ Daily calorie calculation
- ✅ Personalized onboarding
- ✅ Local persistence with SwiftData
- ✅ Reactive SwiftUI architecture
- ✅ Dark modern UI
- ✅ Automatic age calculation
- ✅ Real-time calorie tracking
- ✅ Profile management

---

# 🧠 Calorie Formula

CalTrack currently uses the **Mifflin-St Jeor Equation**.

## Male

```text
BMR = (10 × weight)
    + (6.25 × height)
    − (5 × age)
    + 5
```

## Female

```text
BMR = (10 × weight)
    + (6.25 × height)
    − (5 × age)
    − 161
```

The result is multiplied by the user's activity level.

---

# 🎨 Deep Sea Theme

| Color | Hex |
|---|---|
| Ink Black | `#0d1b2a` |
| Prussian Blue | `#1b263b` |
| Dusk Blue | `#415a77` |
| Lavender Grey | `#778da9` |
| Alabaster Grey | `#e0e1dd` |

---

# 🏗️ Architecture

```text
CalTrack
│
├── Models
│   └── UserProfile
│
├── Views
│   ├── RootView
│   ├── OnboardingView
│   └── HomeView
│
├── Services
│   └── CaloriesCalculatorService
│
└── Utils
    └── Theme
        └── AppColors
```

---

# ⚙️ Tech Stack

| Technology | Purpose |
|---|---|
| Swift | Main language |
| SwiftUI | UI framework |
| SwiftData | Local persistence |
| Xcode | Development environment |

---

# 🚀 Installation

## Clone the repository

```bash
git clone https://github.com/Error404RD/CalTrackApp.git
```

## Open the project

```bash
open CalTrack.xcodeproj
```

## Run the app

```text
⌘ + R
```

---

# 📦 Requirements

- macOS
- Xcode 16+
- iOS 18+

---

# 🔮 Planned Features

- Meal tracking
- Food history
- Progress charts
- HealthKit integration
- Weight tracking
- Notifications
- Goals system
- Multi-platform support

---

# 👨‍💻 Author

### Jose Miguel Lopez

GitHub:
https://github.com/Error404RD

---

<div align="center">

### Built with ❤️ using SwiftUI

</div>
