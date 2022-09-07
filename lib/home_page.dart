import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool accessibilityIcon = false;
  bool timerIcon = false;
  bool smartphoneOneIcon = false;
  bool smartphoneTwoIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,size: 50),
                  //IconButton(onPressed: (){}, icon: Icon(Icons.account_circle), iconSize: 50),
                  Column( 
                    children:[
                      Text("Flutter McFlutter"),
                      Text("Experienced App Developer"),
                    ],                
                  ),
                ],
              ), 
              Row(
                children: [
                  Expanded(child: Text("123 Main Street", textAlign: TextAlign.start)),
                  Expanded(child:Text("(123) 456-7898", textAlign: TextAlign.end)),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: 
                    IconButton(
                      icon: Icon(Icons.accessibility), 
                      iconSize: 30,
                      color: accessibilityIcon ? Colors.indigo : Colors.black,
                      onPressed: (){
                        accessibilityIcon = !accessibilityIcon;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Únete a un club con otras personas"),
                            ),
                          );
                          
                      }, 
                    ),
                  ),
                  Expanded(
                    child: 
                    IconButton(
                      onPressed: (){
                        timerIcon = !timerIcon;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Cuenta regresiva para el evento: 31 días"),
                            ),
                          );
                      }, 
                      color: timerIcon ? Colors.indigo : Colors.black,
                      icon: Icon(Icons.timer), 
                      iconSize: 30
                    )
                  ),
                  Expanded(
                    child: 
                    IconButton(
                      onPressed: (){
                        smartphoneOneIcon = !smartphoneOneIcon;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Llama al número 4155550198"),
                            ),
                          );
                      }, 
                      color: smartphoneOneIcon ? Colors.indigo : Colors.black,
                      icon: Icon(Icons.smartphone), 
                      iconSize: 30
                    ),
                  ),
                  Expanded(
                    child: 
                    IconButton(
                      onPressed: (){
                        smartphoneTwoIcon = !smartphoneTwoIcon;
                        setState(() {});
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Llama al celular 3317865113"),
                            ),
                          );
                      }, 
                      color: smartphoneTwoIcon ? Colors.indigo : Colors.black,
                      icon: Icon(Icons.smartphone), 
                      iconSize: 30
                    )
                  ),
                ],
              )
            ],
          ),
        ),
        //),
      );
  }
}