<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Description

一个纯 Flutter 的 iOS 风格取色器（Color Picker）组件，适用于所有平台（Web、Android、iOS、Windows、macOS、Linux）。不再包含任何原生 iOS 组件调用。

基于 [ios_color_picker](https://github.com/mokhselim/ios_color_picker) 项目修改，移除了原生 iOS 组件调用。

## Supported Platforms

- Linux
- macOS
- Web
- Windows
- iOS
- Android

## Features

### Screenshots & Demo

<img src="https://res.cloudinary.com/dcvoshrrl/image/upload/v1737504135/color_picker/1_v2nk8m.png" width="300">
<img src="https://res.cloudinary.com/dcvoshrrl/image/upload/v1738019895/color_picker/esmczhsgeo6qk7py5x66.gif" width="300">
<img src="https://res.cloudinary.com/dcvoshrrl/image/upload/v1737504183/color_picker/1_p91sih.gif" width="300">
<img src="https://res.cloudinary.com/dcvoshrrl/image/upload/v1737504212/color_picker/3_zkbdzu.gif" width="300">

## Getting Started

This package is easy to integrate into your Flutter application. See the usage section below to get started.

## Usage

```dart
// 适用于所有平台的 iOS 风格取色器
ElevatedButton(
  onPressed: () {
    iosColorPickerController.showIOSCustomColorPicker(
      startingColor: backgroundColor,
      onColorChanged: (color) {
        setState(() {
          backgroundColor = color;
        });
      },
      context: context,
    );
  },
  child: Text("Open Color Picker"),
)
```
