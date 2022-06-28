import 'package:day_8/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class AnimationPage extends StatefulWidget {
   AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _height = 150;

  double _width = 200;

  Color _color = Colors.black;

  double _fontSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_8ovwz3n6.json"),
            SizedBox(height: 10,),
            AnimatedContainer(
                duration: Duration(seconds: 3),
              curve: Curves.ease,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(15)
              ),
              onEnd: (){
                  setState(() {
                    _width = _width== 200 ? 300:200;
                    _color = _color==Colors.black?Colors.orangeAccent:Colors.black;
                  });
              },
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _height = 200;
                _width = 250;
                _color = Colors.orangeAccent;
              });
            },
                child: Text("Animation",style: TextStyle(fontSize: _fontSize,color: _color),)
            ),
            Hero(tag: "tag", 
                child: Container(
                  child: Image.asset("images/carrot.png",height: 100.h,width: 200.w,),
                )
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen()));
            },
                child: Text("Animation")
            )
          ],
        ),
      ),
    );
  }
}
