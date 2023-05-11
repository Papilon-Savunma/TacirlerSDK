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
## API Usage
**NOTE:** This is for developers who develop this SDK.

API swagger address: [Tacirler API](https://umsapi.tacirler.com.tr:81/apidocs/#/)

- `user/active_application`: Post request that checks wheter there is active client application for KYC process. If there is, app navigates to `PreviouslyAppliedViewController.swift`. If there is not app stays in `TacirlerSDKViewController.swift`.

- `user/add`: Post request to send form data taken from `FormViewController.swift` to API.

- `user/job_list`: Get request for job list for form, in `FormViewModel.swift`

- `user/city_list`: Get request for city list for form, in `FormViewModel.swift`

- `user/survey`: Post request to send questionnaire result to API in `QuestionnaireViewController.swift`.

- `user/otp`: Post request to send phone number to API in `PhoneNumberViewController.swift`.

- `user/retake_otp`: Get request to get code when 180 second ends, in `PhoneNumberViewController.swift`.

- `user/verify_otp`: Post request to send OTP code to API in `SMSCodeViewController.swift`.

- `user/nfc`: Post request to send data taken from nfc read to API in `MRZNFCResultViewController.swift`.

- `user/face`: Post request to send face photo to API in `SelfieResultViewController.swift`. API compares the NFC photo that is sent before with the face photo.

- `user/address`: Post request to send barcode text to API in `IkametgahViewController.swift`.

- `address/verify_address`: Get request that takes `adresNo` as querry parameter to verify address from "E-devlet Adres No", in `AddressViewModel.swift`.

- `user/video_call`: Get request to get video call room url in  `VideoCallViewModel.swift`.

- `user/terminate_call`: Get request to recall when video call is terminated, in `APIService.swift`.



## Author
Papilon Savunma
