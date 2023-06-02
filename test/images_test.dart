import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bell).existsSync(), true);
    expect(File(Images.board).existsSync(), true);
    expect(File(Images.cars).existsSync(), true);
    expect(File(Images.hospital).existsSync(), true);
    expect(File(Images.speech).existsSync(), true);
  });
}
