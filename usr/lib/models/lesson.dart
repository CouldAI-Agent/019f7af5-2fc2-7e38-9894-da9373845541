class Lesson {
  final String id;
  final String title;
  final String description;
  final String content;
  final Duration duration;

  const Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.duration,
  });
}

class Section {
  final String title;
  final List<Lesson> lessons;

  const Section({
    required this.title,
    required this.lessons,
  });
}
