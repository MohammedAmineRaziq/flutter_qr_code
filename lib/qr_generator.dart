import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QR_Generator extends StatefulWidget {
  const QR_Generator({Key? key}) : super(key: key);

  @override
  State<QR_Generator> createState() => _QR_GeneratorState();
}

class _QR_GeneratorState extends State<QR_Generator> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr Code'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            QrImage(
              data: controller.text,
              version: QrVersions.auto,
              size: 200,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your text'
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.shade700,
                  shadowColor: Colors.grey,
                  textStyle: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                  });
                },
                child: Text('GENERATE QR')),

          ],
        )
      ),
    );
  }
}
