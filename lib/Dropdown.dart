import 'package:flutter/material.dart';

class Dropdoown extends StatefulWidget {
  @override
  _DropdoownState createState() => _DropdoownState();
}

class _DropdoownState extends State<Dropdoown> {
  bool value = false;
  bool subvalue = false;
  List g = ["Male", "Female", "Other"];
  String _SelectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DROPDOWN"),
      ),
      body: Container(
        width: 500,
        height: 100,
        child: Row(
          children: [
            Container(
              width: 100,
              color: Colors.red,
              child: Text("Gender",style: TextStyle(fontSize: 25,),),),

            Container(
              width: 150,

              child: DropdownButton(
                value: _SelectedLocation,
                onChanged: (newValue) {
                  setState(
                    () {

                    },
                  );
                },
                  hint: Text("Your Gender",style: TextStyle(color: Colors.red),),
                  dropdownColor: Colors.red,
                items: g.map((value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
