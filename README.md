<p align="center" >
<img src="https://github.com/igormatyushkin014/Peripheral/blob/master/Logo/logo-1024-400.png" alt="Peripheral" title="Peripheral">
</p>

# Peripheral
The way to launch apps on iOS.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Peripheral` cocoapod

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

It's incredibly easy to launch apps with `Peripheral`. Just take look at this:

```swift
/*
 * Launch Skype
 */

Peripheral.Skype.launchApp()


/*
 * Launch Twitter
 */

Peripheral.Twitter.launchApp()
```

## Note

Don't forget to create `LSApplicationQueriesSchemes` array in `.plist` file and list all application schemes which you are going to use with `Peripheral` library.

## License

`Laconic` is available under the MIT license. See the `LICENSE` file for more info.
