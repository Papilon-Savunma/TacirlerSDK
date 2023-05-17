# TacirlerSDK
[![pod - 0.1.7](https://img.shields.io/badge/pod-0.1.7-blue)](https://cocoapods.org/)

## Requirements
- +iOS 13.0 

## Installation
TacirlerSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TacirlerSDK'
```
## Configuration
- In target app select `Signing & Capabilities` tab and click `+Capability` button and add `Near Field Communication Tag Reading` capability.
- Add your Info.plist file necessary permissions;
```
<!--
FOR NFC
-->
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
<key>NFCReaderUsageDescription</key>
<string>Permission string</string>

<!--
FOR Camera
-->
<key>NSCameraUsageDescription</key>
<string>Permission string</string>
<key>NSMicrophoneUsageDescription</key>
<string>Permission string</string>

```
- Make sure you have these lines in your `.entitlements` file;
```
<dict>
    <key>com.apple.developer.nfc.readersession.formats</key>
    <array>
        <string>TAG</string>
    </array>
</dict>
```
## Usage
First import the SDK;
```swift
import TacirlerSDK
```
Then, create a view controller object to start cycle;
```swift
let vc = TacirlerSDKViewController()
```
Then, handover this view controller to a button. For example;
```swift
@objc func nextClicked() {
    vc.modalTransitionStyle = .coverVertical
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true)        
}
```
- `x` buttons on the screen is to `dismiss` the SDK. Also, when cycle ends, `home` button is to `dismiss` SDK.

## SDK Flow


- KVKK Approval Screen
![image](./images/IMG_0023.PNG =390x844)
User needs to check both checkmark to proceed.

- KVKK Policy and Commercial and Electronic Message Screens
![image](./images/IMG_0024.PNG =390x844) ![image](./images/IMG_0025.PNG =390x844)

- MASAK Statement Screen
![image](./images/IMG_0026.PNG =390x844)

- Daily and Monthly Notifications Screen
![image](./images/IMG_0027.PNG =390x844)
User needs to check checkmark to proceed.

- NFC Availability Check Screen
![image](./images/IMG_0028.PNG =390x844)
In this screen NFC Availability control should be done, otherwise, user cannot proceed.

- Form Screen
![image](./images/IMG_0029.PNG =390x844)
User needs to fill the form to proceed

- Questionnaire Screen
![image](./images/IMG_0030.PNG =390x844)
User needs to choose one option to proceed. If they choose other or "Tacirler Investment Personal", user needs to fill text field.

- Phone Number Screen
![image](./images/IMG_0031.PNG =390x844)

- SMS OTP Code Screen
![image](./images/IMG_0032.PNG =390x844)

- MRZ Scanner Screen
![image](./images/IMG_0033.PNG =390x844)
TR Identity card should be shown to the camera to proceed.

- NFC Reader Screen
![image](./images/IMG_0036.PNG =390x844) ![image](./images/IMG_0037.PNG =390x844)
TR Identity card should be shown to backside of the phone to proceed.

- Information Check Screen
![image](./images/IMG_0038.PNG =390x844)

- Selfie Screen
![image](./images/IMG_0039.PNG =390x844)

- Selfie Check Screens
![image](./images/IMG_0041.PNG =390x844) ![image](./images/IMG_0042.PNG =390x844)

- Address Verification Screens
![image](./images/IMG_00xxxxxx.PNG =390x844)

1. Verification with Place of Residence
![image](./images/IMG_0043.PNG =390x844)

![image](./images/IMG_0044.PNG =390x844)
QR Code that is on the place of residence form can be scanned.

2. Verification with Address No from E-devlet
![image](./images/IMG_0045.PNG =390x844) 

- Client Information Screen
![image](./images/IMG_0046.PNG =390x844)

- Video Call Screens
![image](./images/IMG_0047.PNG =390x844)

![image](./images/IMG_0048.PNG =390x844)

![image](./images/IMG_0049.PNG =390x844)

- Result Screens
![image](./images/IMG_0051.PNG =390x844)
Application failed

![image](./images/IMG_0052.PNG =390x844)
Application succeded


## Author
Papilon Savunma
