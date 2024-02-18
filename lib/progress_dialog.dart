import 'package:flutter/material.dart';

class ProgressDialogExample extends StatefulWidget {
  const ProgressDialogExample({super.key});

  @override
  State<ProgressDialogExample> createState() => _ProgressDialogExampleState();
}

class _ProgressDialogExampleState extends State<ProgressDialogExample> {
  void _saveData() async {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return Dialog(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Save")
                ],
              ),
            ),
          );
        });
    await Future.delayed(Duration(seconds: 3));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Dialog Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _saveData();
          },
          child: Text('ProgressIndication Button'),
        ),
      ),
    );
  }
}
