import 'package:flutter/material.dart';

import '../button.dart';
import '../circular_progress_indicator.dart';

class TaskProgressCard extends StatelessWidget {
  final String name, eta, option;
  final Color color, actionColor;
  final List<String> tasks;
  final double progress;

  const TaskProgressCard(
      {Key key,
      this.name,
      this.eta,
      this.color,
      this.tasks,
      this.progress,
      this.option,
      this.actionColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(eta),
                    decoration: BoxDecoration(
                        color: actionColor,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(16))),
                  ),
                )
              ],
            ),
            ListView.builder(
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(tasks[i]),
                );
              },
              primary: false,
              itemCount: tasks.length,
              shrinkWrap: true,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Button(
                      onPressed: () {},
                      color: color,
                      text: Text(
                        option,
                      ),
                      type: ButtonType.DEFAULT,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Flexible(
                    flex: 1,
                    child: CPIndicator(
                      value: progress,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
