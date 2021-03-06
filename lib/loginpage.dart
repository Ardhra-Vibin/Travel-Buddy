import 'package:flutter/material.dart';
import 'phoneverification.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _mobile = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Login"),
    ),backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Text("Login using OTP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
                SizedBox(height: 50,),
                Center(
                  child: Container(width: MediaQuery.of(context).size.width/1.5,
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.phone,color: Colors.indigo,),
                          contentPadding: EdgeInsets.only(left: 15,top: 15),
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("By logging in, you agree to our"),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            child: Text("Terms and Conditions",style: TextStyle(color: Colors.indigo,decoration: TextDecoration.underline),),

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("and"),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            child: Text("Privacy Policy",style: TextStyle(color: Colors.indigo,decoration: TextDecoration.underline),),

                          ),
                        )
                      ],
                    )
                  ],
                ),SizedBox(height: 30,),
                Center(
                  child: ButtonTheme(
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width/2,
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 0,
                      color: Colors.indigo,
                      icon: Text(""),
                      label: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneVerification()));
                      },
                    ),
                  ),
                )

              ],
            ),
          ),

        ),
      ),
    );
  }
}