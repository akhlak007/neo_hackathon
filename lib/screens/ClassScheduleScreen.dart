import 'package:flutter/material.dart';

class ClassScheduleScreen extends StatelessWidget {
  const ClassScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Schedule & Faculty Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Class Routine & To-Dos',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            RoutineCard(
              day: 'Monday',
              time: '9:00 AM - 11:00 AM',
              course: 'Computer Science 101',
              teacher: 'Prof. John Doe',
              teacherContact: '123-456-7890',
              assignmentDeadline: '2025-03-10',
              examSchedule: '2025-03-15',
            ),
            RoutineCard(
              day: 'Tuesday',
              time: '11:00 AM - 1:00 PM',
              course: 'Data Structures',
              teacher: 'Prof. Jane Smith',
              teacherContact: '987-654-3210',
              assignmentDeadline: '2025-03-12',
              examSchedule: '2025-03-18',
            ),
            RoutineCard(
              day: 'Wednesday',
              time: '2:00 PM - 4:00 PM',
              course: 'Artificial Intelligence',
              teacher: 'Dr. Williams',
              teacherContact: '555-123-4567',
              assignmentDeadline: '2025-03-14',
              examSchedule: '2025-03-20',
            ),
            const SizedBox(height: 20),
            const Text(
              'To-Do List (Assignments & Exams)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            TodoCard(title: 'Complete Assignment for CS101', dueDate: '2025-03-10'),
            TodoCard(title: 'Prepare for Data Structures Exam', dueDate: '2025-03-12'),
            TodoCard(title: 'Review AI Class Notes', dueDate: '2025-03-14'),
          ],
        ),
      ),
    );
  }
}

class RoutineCard extends StatelessWidget {
  final String day;
  final String time;
  final String course;
  final String teacher;
  final String teacherContact;
  final String assignmentDeadline;
  final String examSchedule;

  const RoutineCard({
    required this.day,
    required this.time,
    required this.course,
    required this.teacher,
    required this.teacherContact,
    required this.assignmentDeadline,
    required this.examSchedule,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$day - $course',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Time: $time'),
            Text('Professor: $teacher'),
            Text('Contact: $teacherContact'),
            const SizedBox(height: 8),
            Text('Assignment Deadline: $assignmentDeadline'),
            Text('Exam Schedule: $examSchedule'),
          ],
        ),
      ),
    );
  }
}

class TodoCard extends StatelessWidget {
  final String title;
  final String dueDate;

  const TodoCard({required this.title, required this.dueDate});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            Text(
              'Due: $dueDate',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

