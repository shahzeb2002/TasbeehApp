import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/tasbeeh_controller.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TasbeehController>(context);

    return Scaffold(
      appBar: AppBar(title: Text("History")),
      body: ListView.builder(
        itemCount: controller.history.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Completed: ${controller.history[index]}"),
          );
        },
      ),
    );
  }
}
