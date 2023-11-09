import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            ListView.builder(
              shrinkWrap:true,
              itemCount: 100,
              
              itemBuilder: (context, index) {
              return Card(
                color: Colors.amber,  
                
      

                child: ListTile(
                  title: Text("data"),
                  subtitle: Text("g"),
                  trailing: PopupMenuButton(
                    onSelected: (value) {
                      if (value == "edit") {
                        
                      }
                      if (value == 'delete') {
                        
                      }
                    },
                    child: Icon(Icons.more),
                    
                    itemBuilder: (context) => <PopupMenuEntry<String>> [
                      PopupMenuItem(
                        value: 'edit',
                        
                        child: Text("edit")),
                         PopupMenuItem(
                        value: 'delete',
                        
                        child: Text("delete"))
                    ] ,),
                ),
              );


            },
            )
          ],
        ),
    );
  }
}