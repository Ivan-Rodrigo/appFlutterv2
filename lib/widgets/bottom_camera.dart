import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// This is the main application widget.
class BottomCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String valor = '';
    return FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () async {
          String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#A03131', 'Cancelar', false, ScanMode.QR);

          valor = barcodeScanRes;

          print('valor de datos $barcodeScanRes');
        });
  }
}
