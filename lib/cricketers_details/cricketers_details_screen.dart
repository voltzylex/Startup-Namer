import 'package:flutter/material.dart';
class CricketersDetails extends StatefulWidget {
  const CricketersDetails({Key? key}) : super(key: key);

  @override
  State<CricketersDetails> createState() => _CricketersDetailsState();
}

class _CricketersDetailsState extends State<CricketersDetails> {
  int noOfMatchPlayed = 0;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    noOfMatchPlayed = 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("Cricketers detail"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/download.png",
                width: 200,
                height: 200,
              ),
              const Divider(
                height: 30,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Color.fromARGB(221, 250, 248, 248),
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.0,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Virat Kohli',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(221, 247, 251, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Age',
                  style: TextStyle(
                    color: Color.fromARGB(221, 250, 248, 248),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 15,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 0,
              // ),
              const Text(
                '30',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(221, 247, 251, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'No of games played',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(221, 250, 248, 248),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                '$noOfMatchPlayed',
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(221, 247, 251, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[700],
        onPressed: () {
          setState(() {
            noOfMatchPlayed = noOfMatchPlayed + 1;
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
