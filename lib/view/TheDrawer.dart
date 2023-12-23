import 'package:flutter/material.dart';

class TheDrawer extends StatefulWidget {
  const TheDrawer({super.key});

  @override
  State<TheDrawer> createState() => _TheDrawerState();
}

class _TheDrawerState extends State<TheDrawer> {
   double value1=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Drawer"),
      ),
      body:  Column(
        children: [
          ExpansionTile(
            backgroundColor: Colors.white,
            title: const Text("Details",style: TextStyle(color: Colors.black),),
            children: [
            ListTile(
              onTap: (){
                print("Name");
              },
              title: const Text("Name",style: TextStyle(color: Colors.black),),),
              ListTile(
                onTap: (){
                  print("Age");
                },
                title: const Text("Age",style: TextStyle(color: Colors.black),),),
              ListTile(
                onTap: (){
                  print("Place");
                },
                title: const Text("Place",style: TextStyle(color: Colors.black),),)
            ],
          ),
          Slider(
              value: value1,
              divisions: 4,
              onChanged: (value){
            setState(() {
              value1=value;
            });
          }),
          Text(value1.toString(),style: TextStyle(color: Colors.black,fontSize: 40),)
        ],
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isClicked=true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const UserAccountsDrawerHeader(
              accountName: Text("RoseMariya",style: TextStyle(color: Colors.black),),
              accountEmail:Text("rose@gmail.com",style: TextStyle(color: Colors.black)),
            currentAccountPicture: ClipOval(
              child: CircleAvatar(
                backgroundImage: AssetImage("assests/iphone.jpg"),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assests/img.png")
              )
            ),
          ),
          const Card(
            elevation: 5,
            color: Colors.white54,
            child: ListTile(
              title: Text("Home",style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.home,color: Colors.black,),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.white54,
            child: SwitchListTile(
                value:isClicked,
                subtitle: isClicked==false? const Icon(Icons.sunny,color: Colors.black,):const Icon(Icons.sunny_snowing,color: Colors.black,),
                onChanged:(value){
              setState(() {
                isClicked=value;
              });
            })
          ),
          const Card(
            elevation: 5,
            color: Colors.white54,
            child: ListTile(
              title: Text("Hell",style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.access_alarm_rounded,color: Colors.black,),
            ),
          )
        ],
      ),
    );
  }
}
