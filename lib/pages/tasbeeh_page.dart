import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/tasbeeh_controller.dart';

class TasbeehPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TasbeehController>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Tasbeeh Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 60),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.increment,
              child: Text("Increment"),
            ),
            ElevatedButton(
              onPressed: controller.reset,
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
