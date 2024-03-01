import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class LoadFont {
  Future<bool> loadFontV(String fontName) async {
    // Accept font name as parameter
    // Construct Google Fonts URL
    var fontUrl = 'https://fonts.googleapis.com/css2?family=$fontName';

    // Download CSS file containing font data
    var response = await http.get(Uri.parse(fontUrl));
    if (response.statusCode == 200) {
      // Extract font URL from CSS file
      var fontMatch = RegExp(r'url\((.*?)\)').firstMatch(response.body);
      if (fontMatch != null) {
        var fontUrl = fontMatch.group(1);

        // Download font file
        var fontResponse = await http.get(Uri.parse(fontUrl!));
        if (fontResponse.statusCode == 200) {
          var fontData = fontResponse.bodyBytes;

          // Save font file locally
          String dir = (await getApplicationDocumentsDirectory()).path;
          File fontFile = File('$dir/$fontName.ttf'); // Save with font name
          await fontFile.writeAsBytes(fontData);

          // Load font dynamically
          final FontLoader fontLoader = FontLoader(fontName);
          fontLoader.addFont(rootBundle.load(fontFile.path));
          await fontLoader.load();
          return true;
        } else {
          throw Exception('Failed to download font file');
        }
      } else {
        throw Exception('Font URL not found in CSS file');
      }
    } else {
      throw Exception('Failed to download CSS file');
    }
  }
}
