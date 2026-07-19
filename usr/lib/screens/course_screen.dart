import 'package:flutter/material.dart';
import '../data/course_data.dart';
import '../models/lesson.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Lesson? selectedLesson;

  @override
  void initState() {
    super.initState();
    if (javaCourse.isNotEmpty && javaCourse.first.lessons.isNotEmpty) {
      selectedLesson = javaCourse.first.lessons.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Player'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: isDesktop ? _buildDesktopLayout() : _buildMobileLayout(),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: _buildSidebar(),
        ),
        const VerticalDivider(width: 1),
        Expanded(
          child: _buildContent(),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: _buildContent(),
        ),
        const Divider(height: 1),
        Expanded(
          flex: 3,
          child: _buildSidebar(),
        ),
      ],
    );
  }

  Widget _buildSidebar() {
    return ListView.builder(
      itemCount: javaCourse.length,
      itemBuilder: (context, moduleIndex) {
        final module = javaCourse[moduleIndex];
        return ExpansionTile(
          initiallyExpanded: true,
          title: Text(module.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          children: module.lessons.map((lesson) {
            final isSelected = selectedLesson?.id == lesson.id;
            return ListTile(
              selected: isSelected,
              selectedTileColor: Colors.blue.withOpacity(0.1),
              leading: Icon(
                Icons.play_circle_filled,
                color: isSelected ? Colors.blue : Colors.grey,
              ),
              title: Text(lesson.title),
              onTap: () {
                setState(() {
                  selectedLesson = lesson;
                });
              },
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildContent() {
    if (selectedLesson == null) {
      return const Center(child: Text('Select a lesson to begin.'));
    }
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width >= 800 ? 400 : 250,
            color: Colors.black87,
            child: Center(
              child: Icon(Icons.play_arrow, size: 80, color: Colors.white.withOpacity(0.8)),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            selectedLesson!.title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'In this lesson, you will learn the core concepts and practical applications related to the topic. Follow along with the code examples and exercises.',
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            width: double.infinity,
            child: const Text(
              '// Sample Java Code\npublic class Main {\n    public static void main(String[] args) {\n        System.out.println("Hello, World!");\n    }\n}',
              style: TextStyle(fontFamily: 'monospace', fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
