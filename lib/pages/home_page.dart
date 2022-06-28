import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('app_name'.tr,style: TextStyle(fontSize: 50),),
            Text('app_title'.tr,style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()=>Get.updateLocale(Locale('en','US')),
                child: Text("English")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed:()=>Get.updateLocale(Locale('bn','BD')),
                child: Text("Bangla")),
          ],
        ),
      ),
    );
  }
}
