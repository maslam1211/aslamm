import 'package:flutter/material.dart';
class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {


  @override
  final formKey =GlobalKey<FormState>();
  TextEditingController Username=new TextEditingController();
  TextEditingController Email=new TextEditingController();
  TextEditingController Phonenumber=new TextEditingController();
  TextEditingController Adress=new TextEditingController();
  TextEditingController dob=new TextEditingController();


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
                    child: TextFormField(decoration: InputDecoration(icon: Icon(Icons.person),
                      labelText: "Username",border:OutlineInputBorder(),
                    ),validator: (value){
                      if(value.isEmpty){
                        return "Enter Username";
                      }else{
                        return null;
                      }
                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(keyboardType: TextInputType.emailAddress,
                        controller: Email,
                        decoration: InputDecoration(icon: Icon(Icons.email),
                          labelText: "Email",border: OutlineInputBorder(),
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
                        controller: Phonenumber,
                        decoration: InputDecoration(icon: Icon(Icons.phone),hintText: ("+91"),
                          labelText: "Phonenumber",border: OutlineInputBorder(),),
                        validator: (Phonenumber){
                          if(Phonenumber.isEmpty){
                            return"Enter a number";
                          }else{print(Phonenumber);
                          return null;

                          }
                        }



                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField( keyboardType: TextInputType.streetAddress,
                        controller: Adress,

                        decoration: InputDecoration(icon: Icon(Icons.home),
                          labelText: "Adress",border: OutlineInputBorder(),),
                        validator:(Adress){
                          if(Adress.isEmpty){
                            return"Enter a Adress";
                          }else {print(Adress);
                          return null;
                          }
                        }
                    ),



                  ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField( keyboardType: TextInputType.datetime,
                controller: dob,

                decoration: InputDecoration(icon: Icon(Icons.date_range),hintText: ("DD/MM/YYY"),
                  labelText: "Date of Birth",border: OutlineInputBorder(),),
                validator:(dob){
                  if(dob.isEmpty){
                    return"Enter a Date of Birth";
                  }else {print(dob);
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
