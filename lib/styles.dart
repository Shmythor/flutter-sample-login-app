import 'package:flutter/material.dart';

var myThemedData = new ThemeData(
  // Define the default Brightness and Colors
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],
  accentColor: Colors.cyan[600],
  

  // Define the default Font Family
  fontFamily: 'Poppins',
  
        
  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    body1: TextStyle(fontSize: 24),
  ),
);

var myGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,

      colors: [
    	   Color(0xFFF88B70),
         Color(0xFFEF538B)
      ],
    ),
);

var myWhiteBox = BoxDecoration(
    color: Colors.white,        
);


/* APP TEXTS */

heading1(text) {
  return Text(
    text, 
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontSize: 30
    ),
  );
}

heading2(text) {
  return Text(
    text, 
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontSize: 28,
    )
  );
}

body1(text, active) {
  var txtColor = (active) ? Color(0xFFF88B70) : Colors.white;

  return Text(
    text,
    style: TextStyle(
      color: txtColor,
      fontFamily: 'Poppins',
      fontSize: 24
    )
  );
}

body2(text) {
  return Text(
    text,
    style: TextStyle(
      color: Color(0xFF4F545B),
      fontFamily: 'Poppins',
      fontSize: 20
    )
  );
}

body3(text, active) {
  var txtColor = (active) ? Color(0xFF9CAABE) : Color(0xFF4F545B);
  
  return Text(
    text,
    style: TextStyle(
      color: txtColor,
      fontFamily: 'Poppins',
      fontSize: 18
    )
  );
}

body4(text) {
  return Text(
    text,
    style: TextStyle(
      color: Color(0xFF4F545B),
      fontFamily: 'Poppins',
      fontSize: 16
    )
  );
}

body5(text) {
  return Text(
    text,
    style: TextStyle(
      color: Color(0xFF9CAABE),
      fontFamily: 'Poppins',
      fontSize: 14
    )
  );
}