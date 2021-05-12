import 'package:flutter/material.dart';

class formfull extends StatefulWidget {
  @override
  _formfullState createState() => _formfullState();
}

class _formfullState extends State<formfull> {
  final formKey = GlobalKey<FormState>();
  TextEditingController Username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  TextEditingController Adress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController cpassword = new TextEditingController();

  int selectedRadio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
    setselectedRadio(int val) {
      setState(() {
        selectedRadio = val;
      });
    }
  }

  int _counter = 0;
  bool checkedBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("full"),
      ),
      body: Container(
        width: 500,
        height: 1000,
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Name",
                            style: TextStyle(fontSize: (20)),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Username")),
                            keyboardType: TextInputType.text,
                            controller: Username,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Username";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Email",
                            style: TextStyle(fontSize: (20)),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Email")),
                            keyboardType: TextInputType.emailAddress,
                            controller: email,
                            validator: (email) {
                              if (email.isEmpty) {
                                return "Enter Email";
                              } else {
                                print(email.toString());
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Phone Number",
                            style: TextStyle(fontSize: 19),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Phone Number")),
                            keyboardType: TextInputType.number,
                            controller: phonenumber,
                            validator: (number) {
                              if (number.isEmpty) {
                                return "Enter a Valid Number";
                              } else {
                                print(number);
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Adress",
                            style: TextStyle(fontSize: (20)),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Adress")),
                            keyboardType: TextInputType.multiline,
                            maxLines: 6,
                            minLines: 5,
                            validator: (Adress) {
                              if (Adress.isEmpty) {
                                return "Enter a Adress";
                              } else {
                                print(Adress);
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 500,
                      child: Row(
                        children: [
                          Container(
                            width: 133,
                            child: Text(
                              "Gender",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                RadioListTile(
                                    value: 1,
                                    groupValue: selectedRadio,
                                    title: Text("Male"),
                                    onChanged: (val) {
                                      print("Male");
                                      setState(() {
                                        selectedRadio = val;
                                      });
                                    }),
                                RadioListTile(
                                    value: 2,
                                    groupValue: selectedRadio,
                                    title: Text("Female"),
                                    onChanged: (val) {
                                      print("Female");
                                      setState(() {
                                        selectedRadio = val;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: (20)),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Password")),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            controller: password,
                            validator: (password) {
                              if (password.isEmpty) {
                                return "Enter a Password";
                              } else {
                                print(password);
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 500,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 133,
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: (20)),
                          ),
                        ),
                        Container(
                          width: 275,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Confirm Password")),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            controller: cpassword,
                            validator: (cpassword) {
                              if (cpassword.isEmpty) {
                                return "Enter a Password";
                              } else {
                                print(cpassword);
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          value: checkedBoxValue,
                          onChanged: (bool value) {
                            setState(() {
                              checkedBoxValue = value;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("I agree"),
                      ],
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        print("YES");
                        setState(() {
                          selectedRadio = selectedRadio;
                        });
                      }
                    },
                    child: Text("SUBMIT"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
