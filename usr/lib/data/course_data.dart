import '../models/lesson.dart';

const List<Section> javaCourse = [
  Section(
    title: 'Getting Started with Java',
    lessons: [
      Lesson(
        id: 'l1',
        title: 'Introduction to Java',
        description: 'What is Java and why should you learn it?',
        content: 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java without the need to recompile.',
        duration: Duration(minutes: 5),
      ),
      Lesson(
        id: 'l2',
        title: 'Setting up the Environment',
        description: 'Install the JDK and an IDE.',
        content: 'To start writing Java programs, you need to install the Java Development Kit (JDK) and an Integrated Development Environment (IDE) like IntelliJ IDEA, Eclipse, or VS Code. \n\n1. Download the latest JDK from Oracle or Adoptium.\n2. Set up your JAVA_HOME environment variable.\n3. Install your preferred IDE.',
        duration: Duration(minutes: 10),
      ),
    ],
  ),
  Section(
    title: 'Object-Oriented Programming',
    lessons: [
      Lesson(
        id: 'l3',
        title: 'Classes and Objects',
        description: 'The building blocks of Java.',
        content: 'In Java, everything is associated with classes and objects, along with its attributes and methods. For example: in real life, a car is an object. The car has attributes, such as weight and color, and methods, such as drive and brake.\n\nA Class is like an object constructor, or a "blueprint" for creating objects.',
        duration: Duration(minutes: 15),
      ),
      Lesson(
        id: 'l4',
        title: 'Inheritance & Polymorphism',
        description: 'Reusing and overriding code.',
        content: 'Inheritance allows a new class to inherit properties and methods from an existing class. The existing class is the superclass, and the new class is the subclass.\n\nPolymorphism means "many forms", and it occurs when we have many classes that are related to each other by inheritance. It allows us to perform a single action in different ways.',
        duration: Duration(minutes: 20),
      ),
    ],
  ),
  Section(
    title: 'Advanced Java',
    lessons: [
      Lesson(
        id: 'l5',
        title: 'Java Streams and Lambdas',
        description: 'Functional programming in Java.',
        content: 'Introduced in Java 8, the Stream API is used to process collections of objects. A stream is a sequence of objects that supports various methods which can be pipelined to produce the desired result.\n\nLambda expressions are used primarily to define inline implementation of a functional interface.',
        duration: Duration(minutes: 25),
      ),
    ],
  ),
];
