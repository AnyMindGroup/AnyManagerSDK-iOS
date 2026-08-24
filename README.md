# AnyManagerSDK - iOS (Swift Package Manager)

A local Swift Package Manager wrapper around Google Mobile Ads that bundles a wide set of mediation adapters into a single product you can drop into any Xcode project.

## Package Contents

This SPM package exposes a single product, `AnyManagerSDK`, built from the `AnyManagerSDKTarget` module. It transitively pulls in:

- **GoogleMobileAds** (v13.6.0+) - Google Mobile Ads SDK
- **Mediation adapters**:
  - **AppLovin** (`AppLovinAdapterTarget`)
  - **Chartboost** (`ChartboostAdapterTarget`)
  - **DTExchange** (`DTExchangeAdapterTarget`)
  - **InMobi** (`InMobiAdapterTarget`)
  - **IronSource** (`IronSourceAdapterTarget`)
  - **LiftoffMonetize** (`LiftoffMonetizeAdapterTarget`)
  - **Line** (`LineAdapterTarget`)
  - **Meta (Facebook Audience Network)** (`MetaAdapterTarget`)
  - **Mintegral** (`MintegralAdapterTarget`)
  - **Moloco** (`MolocoAdapterTarget`)
  - **Pangle** (`PangleAdapterTarget`)
  - **Unity** (`UnityAdapterTarget`)

## Requirements

- iOS 13.0 or later
- Swift 5.9 or later
- Xcode 26 or later

## Installation (Local Xcode Project)

This package is consumed as a **local Swift package** — no remote git URL or version tags are required.

1. Clone or copy the `AnyManagerSDK/` folder from this repository onto your machine (e.g. alongside your app project).
2. Open your app project in Xcode.
3. Go to **File → Add Package Dependencies...**
4. Click **Add Local...** at the bottom of the package picker.
5. Select the `AnyManagerSDK/` folder (the folder that contains `Package.swift`).
6. Choose the `AnyManagerSDK` product and add it to your application target.
7. Build once so Xcode resolves and caches the dependencies.

If your project does not already include them, add the AdMob App ID and any required network entries to your app's `Info.plist` (`GADApplicationIdentifier`).

## Usage

Once added to your project, import the wrapper and Google Mobile Ads as usual:

```swift
import GoogleMobileAds

// Initialize Google Mobile Ads
GADMobileAds.sharedInstance().start()

// Create and configure a banner ad
let bannerView = GADBannerView()
bannerView.adUnitID = "your-ad-unit-id"
```

## Project Structure

```
AnyManagerSDK/
├── Package.swift              # Package manifest (local SPM)
├── README.md                  # This file
├── Sources/
│   └── AnyManagerSDK/
│       └── AnyManagerSDK.swift # Minimal wrapper module
└── Tests/
    └── AnyManagerSDKTests/
        └── AnyManagerSDKTests.swift # Unit tests
```

## Package Details

- **Name**: `AnyManagerSDK`
- **Product**: `AnyManagerSDK`
- **Target**: `AnyManagerSDKTarget`
- **Platforms**: iOS 13.0+
- **Distribution**: Local (no git/tags). Update by replacing the local `AnyManagerSDK/` folder and rebuilding.

## Upstream Sources

Each mediation adapter is pulled from its official Google-published SPM repo. The package pins minimum compatible versions in `Package.swift`; bump them there when you need to pick up newer SDK releases.

## License

This package is a wrapper around third-party SDKs. Refer to each upstream repository for license details.
