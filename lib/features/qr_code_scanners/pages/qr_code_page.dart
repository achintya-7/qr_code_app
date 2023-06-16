import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodePage extends StatefulWidget {
  const QRCodePage({super.key});

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container(color: Colors.blue)),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.white,
                child: MobileScanner(
                  controller: MobileScannerController(
                    detectionSpeed: DetectionSpeed.unrestricted,
                  ),
                  onDetect: (capture) {
                    final result = capture.barcodes;
                    if (result.isNotEmpty) {
                      log(result.first.rawValue.toString());
                      setState(() => value = result.first.rawValue);
                    }
                  },
                ),
              ),
            ),
            Expanded(
              child: Text(value ?? "======"),
            ),
          ],
        ),
      ),
    );
  }
}
