class QuizTemplate {
  final String id;
  final String title;
  final List<Question> questions;

  QuizTemplate({
    required this.id,
    required this.title,
    required this.questions,

  });
}

class UserQuiz {
  final String id;
  final QuizTemplate template;
  final String participant;
  final List<Question> questions;
  final List<Option> answers;

  UserQuiz({
    required this.id,
    required this.template,
    required this.participant,
    required this.questions,
    required this.answers,
  });
}

class QuizResult {
  final String id;
  final String participant;
  final String quizId;
  final int score;
  final DateTime completionTime;

  QuizResult({
    required this.id,
    required this.participant,
    required this.quizId,
    required this.score,
    required this.completionTime,
  });
}

class Question {
  final String id;
  final String questionText;
  final String imageUrl;
  final List<Option> options;

  Question({
    required this.id,
    required this.questionText,
    required this.options,
    required this.imageUrl,
  });
}

class Option {
  final String text;
  final String imageUrl;

  Option({
    required this.text,
    required this.imageUrl,
  });
}
