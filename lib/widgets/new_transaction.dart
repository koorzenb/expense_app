import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key key}) : super(key: key);
  final amountController = TextEditingController();
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
              },
              textColor: Colors.purple,
              child: (Text(
                "Add transaction",
              )),
            ),
          ],
        ),
      ),
    );
  }
}
