import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_me_first/providers/counter_provider.dart';
import 'package:test_me_first/providers/provider_observer.dart';
// import 'package:test_me_first/src/my_app.dart';

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    // Adding our Logger to the list of observers
    ProviderScope(observers: [Logger()], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
