import 'package:flutter/material.dart';
class CheckedBox extends StatefulWidget {
  @override
  _CheckedBoxState createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {

bool value=false;
bool checkedBoxValue=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Checked Box"),
      ),
      body:
      Container(
        child: Row(
          children: [
            Center(child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Checkbox(value: checkedBoxValue,
                  onChanged: (bool value){
                    print(value);
                    setState(() {
                      checkedBoxValue=value;
                    });
                  },
                ),
              ),
            )),
            Text("Notification")
          ],
        ),
      ),
    );
  }
}
