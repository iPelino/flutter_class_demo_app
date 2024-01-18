import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String? data;
  const SecondScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Data from first screen: $data'),
            const SizedBox(height: 10),
            ElevatedButton(
                child: const Column(
                  children: [
                    Text('Go Back!'),
                    SizedBox(height: 10),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            ElevatedButton(
              child: const Text('Go back to first screen with data'),
              onPressed: () {
                Navigator.pop(context, 'Data from second screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
