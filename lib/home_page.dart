
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Chums Top'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                context.go('/new'); // go_router ile "new" sayfasına yönlendirme
              },
              icon: const Icon(Icons.add),
              label: const Text('Create New Quiz'),
            ),
            const ElevatedButton(
              onPressed: null, // Butonu pasif hale getirmek için onPressed'i null yapıyoruz
              child: Text('List'),
            ),
          ],
        ),
      ),
    );
  }
}
