import 'package:flutter/material.dart';
import 'package:flutter_application_7/three.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);
  static const id = 'two page';
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [SizedBox(width: 30,),
              Container(
                 
                  height: 330,
                  width: 330,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/eh.png'),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          Text(
            '''Welcome to 
  Uno To Do!
''',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.w400, color: Colors.white),
          ),
         
          Text(
            '''
Start using the best To Do app
''',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF5835E5)),
          ),SizedBox(height: 30,),
          OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, 
              Three.id);},
              style: OutlinedButton.styleFrom(backgroundColor: Color(0xFF5946D2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
           ),
              child: Container(
                alignment: Alignment.center,
                width: 310,
                height: 40,
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                  child:  
                   
                    Text('Get started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800)),
                  
                ),
              ),
            ),
        ],
      ),
    );
  }
}
