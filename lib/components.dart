import 'package:flutter/material.dart';
import 'styles.dart';

formInput(label, obscure) {
  final textController = new TextEditingController();

  return TextField(
    controller: textController,                           
    obscureText: obscure,       
    maxLength: 16, //Why not   
    style: TextStyle(
      color: Color(0xFF4F545B),
      fontFamily: 'Poppins',
      fontSize: 16
    ),
    decoration: InputDecoration(                              
      labelText: label,
      labelStyle: TextStyle(    
          color: Color(0xFF4F545B),
          fontFamily: 'Poppins',
          fontSize: 16
      ),
      border: new UnderlineInputBorder(
        borderSide: new BorderSide(color: Color(0xFF9CAABE))
      )     
    ),
  );  
}

logoYammi(width, height) {
  return Image.asset(
    'assets/images/yammi_icon.png',
    width: width + 0.0,
    height: height + 0.0
  );
}



signButtons(text, active) {
  var buttonBG = (active) ? Colors.white : Colors.transparent;

  return Center(
    child: new Container(
      decoration: new BoxDecoration(
        color: buttonBG,
        border: Border.all(
          color: buttonBG,
        ),
      ),
      
      child: FlatButton(
        onPressed: () { 
          active = !active;
          return null; 
        },
        child: body1(text, active),    
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //Marcador 2                                                                            
      ),
    ),
  );
}

enum RRSS {
  Instagram,
  Facebook,
  Twitter,
  Google
}

var rrssIcons = {RRSS.Facebook:'F', RRSS.Instagram:'I', RRSS.Twitter:'T', RRSS.Google:'G'};

signSocialButton(type) {
  return Container(
    width: 32.0,
    height: 32.0,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xffEF538B)
    ),
    child: Center(child: Text(rrssIcons[type], style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center))
  );
}

class SignCTACustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Color(0xFFEF538B);
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height);
    
    // draw the circle on centre of canvas having radius 75.0
    canvas.drawCircle(center, 64.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
  
}

