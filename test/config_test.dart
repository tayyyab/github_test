import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('App Config', () async {
    WidgetsFlutterBinding.ensureInitialized();
    final configString = await rootBundle.loadString('lib/config.json');
    final config = json.decode(configString) as Map<String, dynamic>;
    String apiUrl = config['apiUrl'] as String;

    expect(apiUrl, "https://api-url.com");
  });
}
