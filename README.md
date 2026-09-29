BlueStack BidMachine Mediation Adapter for iOS platform

# BlueStackBidMachineAdapter

Using BlueStackBidMachineAdapter you will be able to show BidMachine ads through BlueStack SDK.

## Supported ad formats
- Banner/MREC
- Interstitial
- Rewarded

## Requirements
- Xcode 15.1
- iOS: 13

## Integrate BlueStackBidMachineAdapter in your application project

### Using Cocoapods
In the `Podfile` of your application project add `BlueStackBidMachineAdapter` dependency

```shell
pod 'BlueStackBidMachineAdapter'
```
and run `pod install --repo-update` in you terminal.

### Using Swift Package Manager (SPM)

- Go to the project settings and select `Package Dependencies`
- Search for https://github.com/azerion/BlueStack-BidMachine-Adapter.git and add `BlueStackBidMachineAdapter` to your target.

**Note:** Add `-ObjC` to you `Other Linker Flags` of target build settings. 

### Documentation

Please visit https://developers.bluestack.app/ios/mediation/primairy/supported-networks#bidmachine
