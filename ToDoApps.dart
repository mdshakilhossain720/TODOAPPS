import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapps/style.dart';

class ToDoApps extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return ToDoPageview ();
  }

}

class ToDoPageview extends State<ToDoApps>{
List ToDoLIST=[];

Myonchange(content){

  setState(() {
  ToDoLIST.add({"item",content},);
  });
}
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title: Text("ToDOApps"),),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                  
                  child: Row(
                children: [
                  Expanded( flex: 70,
                    child: TextFormField( onChanged: (content){Myonchange(content);},  decoration: Appinputdecration("List item"),),),

                  Expanded(
                    flex: 30,
                      child: ElevatedButton(
                    onPressed: (){},child: Text("Add"),style: AppButtonStyle(),
                  ),
                  ),
                ],
              ),),

              Expanded(
                  flex : 90,
                 child: ListView.builder(
                   itemCount: ToDoLIST.length,
                     itemBuilder: (context, index){
                     return Card(
                       child: SizeBox50(
                         Row(
                           children: [
                             Expanded(
                               flex: 80,
                                 child: Text(ToDoLIST[index] ['item'].toString()),),
                             Expanded(child: TextButton(onPressed: (){},child: Icon(Icons.delete),),),
                           ],

                         )


                       ),
                     );
                     },
              ),
              ),
            ],
          ),
        ),
   );
  }

}