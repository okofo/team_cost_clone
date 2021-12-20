import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:team_cost_clone/provider/task_provider.dart';
import 'package:team_cost_clone/widgets/task_item.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    final p = Provider.of<TaskProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFAAD09E),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'images/meter.png',
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '8.3',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 47.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Your score level is good!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'The more KPI and work activity you \n reach, the higher score level you have, \n and the more benefits you get',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  //color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: const [
                            Text(
                              'Open',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            Text(
                              ' 8',
                              style: TextStyle(color: Colors.black45),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              'Done ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.black45),
                            ),
                            Text(
                              '13',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: p.taskList.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              color: Colors.black,
                              height: double.infinity,
                              width: 2,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(21.00),
                              child: TaskCard(
                                task: p.taskList[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
