import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/quiz/domain/quiz.dart';

final quiz1 =
    QuizTemplate(id: 'id123', title: '2025 Top Chum Challenge', questions: [
  Question(
    id: '123',
    questionText: 'My Favorite Color?',
    options: [
      Option(
          text: 'Orange',
          imageUrl: 'https://placehold.co/360x360/orange/orange/png'),
      Option(
          text: 'Blue', imageUrl: 'https://placehold.co/360x360/blue/blue/png'),
      Option(
          text: 'Yellow',
          imageUrl: 'https://placehold.co/360x360/yellow/yellow/png'),
      Option(
          text: 'Green',
          imageUrl: ' https://placehold.co/360x360/9ACD32/9ACD32/png'),
      Option(
          text: 'Violet',
          imageUrl: ' https://placehold.co/360x360/9400D3/9400D3/png'),
      Option(
          text: 'Turquoise',
          imageUrl: ' https://placehold.co/360x360/00CED1/00CED1/png'),
    ],
    imageUrl: 'https://placehold.co/360/B22222/483D8B/png?text=?',
  ),
]);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quiz Chums Top'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        children: [
          Column(
            children: [
              Text(quiz1.title),
              Image.network(
                'https://picsum.photos/id/456/360',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 360,
                child: OutlinedButton(
                  onPressed: () {
                    context.go('/new');
                  },
                  child: const Text('Create Your Quiz Now ->'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
