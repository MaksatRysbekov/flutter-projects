import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Price"),
              controller: priceController,
            ),
            TextButton(
                onPressed: () {
                  addTransaction(
                      titleController.text, double.parse(priceController.text)
                  );
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.purple),
                )),
          ],
        ),
      ),
    );
  }
}
