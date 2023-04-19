import 'dart:io';

import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  Directory('screenshots').createSync();
  try {
    await integrationDriver(
      onScreenshot: (final screenshotName, final screenshotBytes) async {
        final file = File('screenshots/$screenshotName.png');
        if (!file.existsSync()) {
          file.writeAsBytesSync(screenshotBytes);
        }
        return true;
      },
    );
  } catch (e) {
    // ignore: avoid_print
    print('Error occurred: $e');
  }
}