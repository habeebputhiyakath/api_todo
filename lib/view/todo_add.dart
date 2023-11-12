import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoAdd extends StatefulWidget {
  const TodoAdd({super.key});

  @override
  State<TodoAdd> createState() => _TodoAddState();
}

class _TodoAddState extends State<TodoAdd> {


  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       backgroundColor: Colors.black54,
        body: Form(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                child: TextFormField(
          style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "title",
                    border: InputBorder.none,
                    
                  ),
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return "empty"; 
                   }
                   return null;
                 },
                ),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                ),
                
                SizedBox(height: 20,
                ),
                
                 Container(
                    padding: EdgeInsets.all(20),
                    width: 400,
                  child: TextFormField(
                    
                    maxLines: 6,
                   // minLines: 3,
                    style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "enter Description",
                    border: InputBorder.none,
                    
                  ),
                   validator: (value) {
                     if (value == null || value.isEmpty) {
                       return "empty"; 
                     }
                     return null;
                   },
                  ),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  ElevatedButton(onPressed: () {
                    
                  }, child: Text("SAVE"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}