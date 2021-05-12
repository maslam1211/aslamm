import 'package:flutter/material.dart';
class Page0 extends StatefulWidget {
  @override
  _Page0State createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  @override
  final formKey =GlobalKey<FormState>();
  TextEditingController username=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController phonenumber=new TextEditingController();
  TextEditingController adress=new TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LOGIN FORM"),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(decoration: InputDecoration(labelText: "username",border:OutlineInputBorder(),
                      ),validator: (value){
                        if(value.isEmpty){
                          return "Required";
                        }else{
                          return null;
                        }
                      },),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(keyboardType: TextInputType.emailAddress,
                          controller: email,
                          decoration: InputDecoration(labelText: "email",border: OutlineInputBorder(),
                      ),validator: (email){
                        if(email.isEmpty){
                       return "Enter Email";
                      }else
                        {print(email.toString());
                         return null;
                        }
                     }
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(keyboardType: TextInputType.number,
                        controller: phonenumber,
                        decoration: InputDecoration(labelText: "phonenumber",border: OutlineInputBorder(),),
                      validator: (phonenumber){
                        if(phonenumber.isEmpty){
                          return"Enter a number";
                        }else{print(phonenumber);
                        return null;

                        }
                      }



                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField( keyboardType: TextInputType.streetAddress,
                        controller: adress,

                        decoration: InputDecoration(labelText: "adress",border: OutlineInputBorder(),),
validator:(adress){
                        if(adress.isEmpty){
                          return"Enter a adress";
                        }else {print(adress);
                        return null;
                        }
}
                      ),

                    ),

                    RaisedButton(onPressed: ()
                      {
                        if (formKey.currentState.validate())
                        {
                          print(" required");
                          setState(() {

                          });

                        }
                      },child: Text("LOG IN"),),
                  ],),
                ],
              ),),
          ),
        ),
          );
  }
}
