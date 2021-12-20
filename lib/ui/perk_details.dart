import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:team_cost_clone/models/perk.dart';
import 'package:team_cost_clone/models/spending.dart';
import 'package:team_cost_clone/provider/spending_provider.dart';

class PerkDetails extends StatefulWidget {
  final Perk perk;
  final Spending? spending;
  const PerkDetails({Key? key, required this.perk, this.spending})
      : super(key: key);

  @override
  State<PerkDetails> createState() => _PerkDetailsState();
}

class _PerkDetailsState extends State<PerkDetails> {
  @override
  Widget build(BuildContext context) {
    final p = Provider.of<SpendingProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFEECD91),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.perk.category!,
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                                color: Colors.black45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.perk.name!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 47.0,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.perk.usedAmount! + ' remaining ',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.black),
                            ),
                            Text(
                              ' from ' + widget.perk.amount!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.0,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          height: 25,
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.black.withOpacity(0.1),
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Next reload at December 1',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  //color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Partners ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24.0),
                          ),
                          Text(
                            '36',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black45),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: null,
                            icon: Icon(
                              CupertinoIcons.forward,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: p.sponsers.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              color: Colors.black,
                              height: 0.05,
                              width: 2,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final s = p.sponsers[index];
                            return Padding(
                              padding: const EdgeInsets.all(29.0),
                              child: SizedBox(
                                height: 2,
                                width: 90,
                                child: Image.asset(s.sponsers!),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Recent Spending',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: p.spendList.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              color: Colors.black,
                              height: 2.0,
                              width: 2,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final fastfood = p.spendList[index];
                            return Padding(
                              padding: const EdgeInsets.all(21.00),
                              child: ListTile(
                                leading: IconButton(
                                  onPressed: null,
                                  icon: Image.asset(fastfood.icon ?? ''),
                                ),
                                title: Text(fastfood.name ?? ''),
                                subtitle: Text(fastfood.time ?? ''),
                                trailing: Text(fastfood.amount ?? ''),
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


/* 

                       Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: p.spendList.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              color: Colors.black,
                              height: double.infinity,
                              width: 2,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            // final fastfood = p.spendList[index];
                            return Padding(
                              padding: const EdgeInsets.all(21.00),
                              child: SpendingCard(
                                spending: p.spendList[index],
                              ),
                            );
                          },
                        ),
                      ),

                      */