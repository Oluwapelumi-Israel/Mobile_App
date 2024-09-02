import 'package:flutter/material.dart';

import 'Phonepages/phone_pages.dart';
import 'Webpages/web_pages.dart';
import 'layout_out.dart';

void main() {
  runApp(const FasuHomePage());
}

class FasuHomePage extends StatelessWidget {
  const FasuHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceLayoutBuilder(webLayout: WebLayout(), phoneLayout: PhoneLayout(),),
    );
  }
}
