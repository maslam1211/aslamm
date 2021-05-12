import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio=0;
    setselectedRadio(int val){
      setState(() {
        selectedRadio=val;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Radio(
                value: 1,
                groupValue: selectedRadio,
                activeColor: Colors.red,
                onChanged: (val) {
                  print("Radio $val");
                  setState(() {
                    selectedRadio=val;
                  });
                },
              ),
              Radio(
                value: 2,
                groupValue: selectedRadio,
                activeColor: Colors.red,
                onChanged: (val) {
                  print("Radio $val");
                  setState(() {
                    selectedRadio=val;
                  });
                },
              ),
              RadioListTile(value: 3, groupValue: selectedRadio, title:Text ("Male"),
                  onChanged:(val){
                print("Male");
                setState(() {
                  selectedRadio=val;
                });
              }),
              RadioListTile(value: 4, groupValue: selectedRadio,title:Text ("Female"),
                  onChanged:(val){
                print("Femaale");
                setState(() {
                  selectedRadio=val;
                });
              }),
            ],
          ),


    );
  }
}
