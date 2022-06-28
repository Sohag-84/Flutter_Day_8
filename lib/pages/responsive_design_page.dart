import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResponsizePage extends StatelessWidget {
  const ResponsizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AspectRatio(
            //     aspectRatio: 4/2,
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     color: Colors.red,
            //   ),
            // )
            FittedBox(
              fit: BoxFit.cover,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Container(
              height: 200,
              width: 300,
              color: Colors.green,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                widthFactor: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(60)
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.03,),
            LayoutBuilder(builder: (_,constraints){
              if(constraints.maxWidth<=480){
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                );
              }else if(constraints.maxWidth > 480 && constraints.maxWidth < 800 ){
                return Container(
                  height: 400,
                  width: 500,
                  color: Colors.grey,
                );
              }else{
                return Container(
                  height: 250,
                  width: 200,
                  color: Colors.orangeAccent,
                );
              }
            }),
            SizedBox(height: height*0.03,),
            OrientationBuilder(builder: (_,orientation){
              if(orientation==Orientation.portrait){
                return const Center(child: Text("Portrait mode"));
              }else{
                return Center(child: const Text("Landscape mode"));
              }
            }),
            SizedBox(height: height*0.03,),
            Container(
              height: 150.h,
              width: 300.w,
              color: Colors.orangeAccent,
              child: Text("This is example",style: TextStyle(fontSize: 30.sp),),
            )
          ],
        ),
      ),
    );
  }
}
