import 'package:flutter/material.dart';

void main() {
  runApp(const biodata());
}

class biodata extends StatelessWidget {
  const biodata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)
            )
          ),
          toolbarHeight: 230, // default is 56
          toolbarOpacity: 0.9,
          title: Column(
            children: [
              Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/me.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  "Amelia Dianti",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text("Student", style: TextStyle(height: 1, fontSize: 14))
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("About me", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 0.2))),
                  child: Text(
                      "Hi, currently I am studying at the Fakulty of Enginerring and Informatics at the Universitas Pendidikan Nasional. My points of interest include Databases, Artificial Intelligence, and UI/UX",
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black.withOpacity(0.5)))),
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Skills",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 0.2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "5",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[600],
                                size: 18.0,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("SQL",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[600],
                                size: 18.0,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("HTML",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[600],
                                size: 18.0,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("CSS",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[600],
                                size: 18.0,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("JavaScript",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(70),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Find me on",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 20.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.whatsapp,
                              color: Colors.blue,
                              size: 20.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.telegram,
                              color: Colors.blue,
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}