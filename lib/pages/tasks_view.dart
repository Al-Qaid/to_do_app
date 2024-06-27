import 'package:flutter/material.dart';
import 'package:todo_app/components/appbar_widget.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30,),
        AppBarWidget(),
      ],
    );
  }
}