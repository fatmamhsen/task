import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      title: 'My Card',
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String drobval = 'Egypt';
  void drobChange(String val){
    setState(() {
      drobval = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dehaze),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.only(right: 28.0),
          ),
          Icon(Icons.more_vert),
        ],
        title: Text('Contacts'),
        backgroundColor: Colors.purple.shade900,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(20.0),
                          icon: Icon(Icons.person),
                        ),
                      ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                   Row(
                     children: <Widget>[
                       TextField(
                         decoration: InputDecoration(
                           hintText: 'Phone',
                           enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.black,
                             ),
                           ),
                           filled: true,
                           contentPadding: EdgeInsets.all(20.0),
                           icon: Icon(Icons.phone),
                         ),
                       ),
                       DropdownButton<String>(
                           hint: Text('Area'),
                           onChanged: drobChange,
                           value: drobval,
                           items: <String>['Egypt','NasrCity','Isamilia']
                               .map<DropdownMenuItem<String>>((String value){
                             return DropdownMenuItem<String>(
                               child: Text(value),
                               value: value,
                             );
                           }).toList()
                       ),
                     ],
                   ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(20.0),
                     icon: Icon(Icons.location_on),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'City',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
                    Row(
                      children: <Widget>[
                        DropdownButton<String>(
                            hint: Text('State'),
                            onChanged: drobChange,
                            value: drobval,
                            items: <String>['Egypt','NasrCity','Isamilia']
                                .map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                child: Text(value),
                                value: value,
                              );
                            }).toList()
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Zip',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(20.0),
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(20.0),
                        icon:  Icon(Icons.email),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today),
                        hintText: 'Birthday',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(20.0),
                      icon: Icon(Icons.cake ),
                      ),
                    ),
                  ],
          ),
    ),
    ),
    );
  }
}
