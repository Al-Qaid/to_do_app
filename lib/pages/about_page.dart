import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Info", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.surface,
        ),),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      // Body Configurations
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.onPrimary,
                      border: Border.all(width: 1.0)),
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.all(5.0),
                  width: 400,
                  child: Text(
                    "About To Do :                                                                   The 'To Do' app is a simple yet powerful tool designed to help you stay organized and on top of your tasks.                                                     Whether you're a busy professional, a student, or someone who just wants to keep their life in order, this app provides a seamless way to manage your to-do list.                                         At its core, the 'To Do' app offers a clean and intuitive interface that makes it easy to add, organize, and track your tasks.                                                                         You can create tasks with detailed descriptions,          set due dates, and even prioritize them based on importance.                                                                      The app also allows you to mark tasks as complete, providing a satisfying sense of accomplishment as you work through your list.                                                            One of the key features of the 'To Do' app is its ability to help you stay focused and productive. With the option to set reminders for your tasks, you'll never forget an important deadline or meeting. Additionally, the app's categorization system enables you to group your tasks by project, team, or any other criteria that suits your workflow.                                                                           The 'To Do' app also offers the flexibility to access your tasks from anywhere, thanks to its cloud-based synchronization capabilities. Whether you're using your smartphone, tablet, or even a web browser, your to-do list is always at your fingertips, ensuring that you can stay on top of your responsibilities no matter where you are.With its user-friendly design, robust features, and seamless integration, the 'To Do' app is the perfect companion for anyone looking to streamline their task management and boost their productivity.                                       Download it today and take control of your to-do list!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary,

                    ),
                  ),
                ),
                // ****************************************************************************************
                Container(
                  width: 280,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1.0),
                    color: Theme.of(context).colorScheme.onPrimaryFixed,
                  ),
                  child: Center(
                    child: Text(
                      "Developed by : MQ",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // *****************************************************************************************
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1.0),
                    color: Theme.of(context).colorScheme.onPrimaryFixed,
                  ),
                  child: Center(
                    child: Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}