import 'package:flutter/material.dart';


class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);
  static const id = "three page";
  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Center(
                child: Text(
                  "AB",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Antonio Bonilla",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              width: 170,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.blue[700],
            )
          ],
        ),
        Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.star,
                color: Color(0xFFF85977),
              ),
              title: Text('Important'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('Tasks'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Task List'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('House List'),
              onTap: () => null,
            ),
          ],
        ),
        SizedBox(
          height: 400,
        ),
        Row(
          children: [
          
            Container(
              child: OutlinedButton(
                  onPressed: (){openDialog();},
                  child: Row(
                    children: [
                       SizedBox(
              width: 25,
            ),
            Icon(
              Icons.add,
              size: 30,
              color: Colors.blue[700],
            ),
            SizedBox(
              width: 8,
            ),
                      Text(
                        "New List",
                        style: TextStyle(color: Colors.blue[700], fontSize: 20),
                      ),
                    ],
                  )),
            )
          ],
        )
      ],
    ));
  }
Future<void> openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Text("New List"),
            content: const TextField(
              decoration: InputDecoration(hintText: "Enter list title"),
            ),
            actions: [TextButton(onPressed: () {
              
            }, child: const Text("+ Create"))],
          ));
  
}
