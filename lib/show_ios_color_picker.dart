import 'package:flutter/material.dart';
import 'custom_picker/color_observer.dart';
import 'custom_picker/ios_color_picker.dart';

class IOSColorPickerController {
  Color selectedColor = Colors.green;

  /// iOS Native color Picker clone, for all Platforms.
  ///
  /// [startingColor] is [null] then the default color will be green
  void showIOSCustomColorPicker({
    required BuildContext context,
    required ValueChanged<Color> onColorChanged,
    Color? startingColor,
  }) async {
    colorController = ColorController(startingColor ?? selectedColor);
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        barrierColor: Colors.black26,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return IosColorPicker(
            onColorSelected: (value) {
              selectedColor = value;
              onColorChanged(selectedColor);
            },
          );
        });
  }
}
