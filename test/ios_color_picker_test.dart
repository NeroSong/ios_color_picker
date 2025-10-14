import 'package:flutter_test/flutter_test.dart';
import 'package:ios_color_picker/show_ios_color_picker.dart';

void main() {
  test('IOSColorPickerController default color is initialized', () {
    final controller = IOSColorPickerController();
    expect(controller.selectedColor, isNotNull);
  });
}
