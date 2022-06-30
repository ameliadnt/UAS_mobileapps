import 'package:flutter/material.dart';
import 'package:chat_app/zodiac.class.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late Future<List<Zodiac>> futureZodiac;

  @override
  void initState() {
    super.initState();
    futureZodiac = fetchZodiac();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Zodiac>>(
          future: futureZodiac,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final zodiacs = snapshot.data!;
              return ListView.builder(
                itemCount: zodiacs.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.network(
                            zodiacs[index].gambar,
                            width: 75.0,
                            height: 75.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    zodiacs[index].nama,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                  Text(
                                    zodiacs[index].deskripsi,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _navigateAndDisplayAddForm(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {}

  Future<List<Zodiac>> fetchZodiac() async {
    final response =
        await http.get(Uri.parse('http://localhost/chat_app/lib/get.php'));

    final decoded = jsonDecode(response.body);
    final List<Zodiac> zodiacs = [];
    for (final z in decoded) {
      zodiacs.add(Zodiac.fromJson(z));
    }
    return zodiacs;
  }
}