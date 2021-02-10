import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Table Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}
 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Table example'),
         backgroundColor: Colors.red,
         centerTitle: true,
       ),
       body:
       Column(children: [
           Padding(
             padding: EdgeInsets.all(8.0),
       child: Text("Team 1 Members",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 25.0),),
           ),
           Padding(padding: EdgeInsets.all(2.0),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Table(
               textDirection: TextDirection.ltr,
               // defaultColumnWidth: FlexColumnWidth(2.0),
               // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
               border: TableBorder.all(
                 color: Colors.red,
                 style: BorderStyle.solid,
                 width: 3.0,
               ),
               children: [
                 TableRow(children: [
                   TableCell(child: Center(child: Text('First Name', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.green)))),
                   TableCell(child: Center(child: Text('Second Name', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.green)))),
                   TableCell(child:Center(child: Text('Role', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.green))),
                       )
                 ],),
                 TableRow(children: [
                   TableCell(child: Text('Joyce', textScaleFactor: 1)),
                   TableCell(child: Text('Riro', textScaleFactor: 1)),
                   TableCell(child: Text('Programmer', textScaleFactor: 1)),
                 ]),
                 TableRow(children: [
                   TableCell(child: Text('Ato')),
                   TableCell(child: Text('Muliro')),
                   TableCell(child: Text('Back End')),
                 ]),
                 TableRow(children: [
                   TableCell(child: Text('Willy')),
                   TableCell(child: Text('Green')),
                   TableCell(child: Text('Consultant')),
                 ])
               ],),
           ),
           ),
         ],
       ),
     );
   }
 }
 