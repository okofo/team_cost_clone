import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_cost_clone/models/tasks.dart';

class TaskCard extends StatelessWidget {
  final Tasks task;

  const TaskCard({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 170,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: null,
              icon: Image.asset(task.icon!),
            ),
            Text(
              task.details ?? 'category',
              style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  task.percentage ?? "%",
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(task.numberCovered! + "/" + task.total!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
