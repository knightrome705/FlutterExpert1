import 'package:avatar_glow/avatar_glow.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/Demo.dart';
import 'package:url_launcher/url_launcher.dart';
class Sum2 extends StatefulWidget {
  const Sum2({super.key});

  @override
  State<Sum2> createState() => _Sum2State();
}

class _Sum2State extends State<Sum2> {
  Future pickfile()async{
  FilePickerResult? result=await FilePicker.platform.pickFiles(
    type: FileType.any,

  );
  if(result==null){
    Fluttertoast.showToast(msg: "noData");
  }else{
    result.files.length;
  }
  }
  @override
  Widget build(BuildContext context) {
    print("Tree rebuilded");
    final Uri uri=Uri(scheme: 'mailto',path:"knightrome705@gmail.com",query:'body,this is email' );
    return Scaffold(
     // backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("State Management",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Consumer<DemoProvider>(
                builder: (context,value,_) {
                  return AvatarGlow(
                    startDelay: const Duration(milliseconds: 1000),
                    glowColor: Colors.redAccent,
                    curve: Curves.fastOutSlowIn,
                    child: Text(value.count.toString(),
                      style: const TextStyle(fontSize:50),),
                  );
                }
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: ()async{
          Provider.of<DemoProvider>(context,listen: false).add();
          // pickfile();
          // if(await canLaunchUrl(uri) ){
          //   launchUrl(uri
          //   );
          // }
        },
      ),
    );
  }
}
