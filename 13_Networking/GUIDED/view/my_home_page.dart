import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view%20model/counter_controller.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  final CounterController controller = Get.put(CounterController());
  // final controller = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Obx(
          ()=> Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {
                Get.toNamed('/detail');
              },
              child: const Text('Ke Halaman Detail'),),
              const Text(
                'Kamu pencet ini sebanyak:',
              ),
              Text(
                controller.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: controller.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
            FloatingActionButton(
            onPressed: controller.decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
             FloatingActionButton(
            onPressed: controller.GetSnackBar,
            tooltip: 'SnackBar',
            child: const Icon(Icons.chat),
          ),
            FloatingActionButton(
            onPressed: controller.getdialog,
            tooltip: 'Dialog',
            child: const Icon(Icons.messenger_outlined),
          ),
          FloatingActionButton(
            onPressed: controller.getbottomsheet,
            tooltip: 'bottomsheet',
            child: const Icon(Icons.messenger_outlined),
          ),
        ],
      ),
    );
  }
}
