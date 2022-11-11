import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/increment_controller.dart';

class IncrementView extends StatefulWidget {
  const IncrementView({Key? key}) : super(key: key);

  Widget build(context, IncrementController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Increment"),
        actions: const [],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //body
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Tambah"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.updateCounterIncrement();
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.delete),
                  label: const Text("Kurang"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    controller.updateCounterDecrement();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<IncrementView> createState() => IncrementController();
}
