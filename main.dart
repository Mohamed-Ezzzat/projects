import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Home()
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xff27445E),
        appBar: AppBar(
          title: Text('Flutter'),
          backgroundColor: Colors.red[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Container(
                child: CircleAvatar(
                  radius: 130,
                  child: Image.asset('images/78638657_156471155727597_5191169538648965120_n.jpg'),
                ), 
                ),
                 CircleAvatar(
                  radius: 130,
                  backgroundColor: Color(0xff27445E),
                  child: Padding(
                    padding: const EdgeInsets.all(8), // Border radius
                    child: ClipOval(child: Image.asset('images/78638657_156471155727597_5191169538648965120_n.jpg'),),
                  ),
                ),
              Center(
                child: Container(
                color: Color(0xff27445E),
                width: 400,
                height: 80,
                child: Center(
                  child: Text('Mohamed Ezzat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Pacifico'
                  ),
                   ),
                ),),
              ),
              Divider(
                thickness: 3,
                color: Colors.blue,
                indent: 20,
                endIndent: 20,
              ),

              Card(
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
                
                child: ListTile(
                  
                  leading:Icon(Icons.phone , size:35 ,color: Colors.black,),
                  title: Text("(+20) 1225385213" , style: TextStyle(fontSize: 25),),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Row(
                    children: [
                      Spacer(flex: 1),
                      Icon(Icons.phone , size:35 ,color: Colors.black,),
                      Spacer(flex: 1),
                       Text("(+20) 1225385213" , style: TextStyle(fontSize: 25),),
                      Spacer(flex: 3),
                    ],
                  ),
                ),
              ),

               Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Row(
                    children: [
                      Spacer(flex: 1),
                      Icon(Icons.mail , size:35 ,color: Colors.black,),
                      Spacer(flex: 1),
                       Text("mohamed4m123@gamil.com" , style: TextStyle(fontSize: 20),),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              ),
          ] ),
        ),
    ),
  );
  }
}
