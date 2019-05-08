import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components.dart';
import 'styles.dart';

void main() {
  //debugPaintSizeEnabled=true;
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: myThemedData,
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(                
        body: Container(
          alignment: Alignment.center,
          decoration: myGradient,
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,   
            children: <Widget>[              
              Column( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,        
                children: <Widget>[
                  /** Logo */
                  logoYammi(156, 156),
                  /** App title */
                  Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,        
                    children: <Widget>[
                      heading1("Yammi"),
                      heading1("Just explore creativity")
                    ]
                  ),
                ]
              ),
              /** Buttons */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {
                      //Navigate to Sign In when pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: heading2("Sign In"),
                    //textTheme: ,
                  ),
                  Text("or", style: TextStyle(fontSize: 18.0)),
                  FlatButton(
                    onPressed: () {
                      //Navigate to Sign Up when pressed
                      return null;
                    },
                    child: heading2("Sign Up"),
                  ),
                ]
              ),
            ],
          ),
        ),
      );
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        resizeToAvoidBottomInset: false, //Anotación 1          
        body: Container(
          alignment: Alignment.center,     
          decoration: myGradient,     
          child: Column( 
            children: <Widget>[              
              Container(                 
                decoration: myGradient,                               
                child: Column(                  
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: logoYammi(96, 96)
                    ),                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,              
                      children: [                        
                        signButtons("Sign In", true),
                        signButtons("Sign Up", false)
                      ]
                     ),
                  ],
                )
              ),
              Expanded(
                child: Container(               
                  decoration: myWhiteBox,
                  child: Column(                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,             
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 16),
                                  child: body2("Use your keyboard"),
                                )
                              ],
                            ),
                            formInput('USERNAME', false),
                            formInput('PASSWORD', true),
                            new Center(child: body5("Forgot your password?"))
                          ]
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          body2("or sign in with:"),
                          signSocialButton(RRSS.Twitter),
                          signSocialButton(RRSS.Google),
                          signSocialButton(RRSS.Facebook)                          
                        ],
                      ),
                      CustomPaint(
                        painter: new SignCTACustomPainter(),
                        child: new Center(
                          child: new FlatButton(
                            onPressed: () => {null},
                            child: body1('Sign in', false),
                          ),
                        ),
                      ),
                    ],
                  )
                )
              )
            ]
          ),
        ),
      );
    }
  }




