import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      /*theme: ThemeData(
        primarySwatch: Colors.white,
      ),*/
      home: MyHomePage(title: 'Fiinance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //final ButtonStyle style1 =
    //ElevatedButton.styleFrom(
    //color: Color(blue)

    //    borderRadius: BorderRadius.all(Radius.circular(20))
    //);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: null,
              child: const Text('Settings'),
            ),
          ],
          title: const Text('Fiinance',
              style: TextStyle(color: Colors.black, fontSize: 18)),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff00BFFF),
                    Color(0xff4100E0),
                  ],
                ),
              ),
              // width: 700,
              //height: 275,
              //padding: const EdgeInsets.all(50.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(height: 30),
                  const Text(
                    '\$904.91',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //fontWeight: FontWeight,
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          //side: BorderSide(color: Colors.red)
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Change currency'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.black12,
                    ),
                    padding: const EdgeInsets.all(15.0),
                    //width: double.infinity,
                    //color: Colors.green,
                    child: const Text(
                      '10 monthly expenses',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        //backgroundColor: Colors.green,
                        //fontWeight: FontWeight,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
              height: 15,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.dashboard),
                        onPressed: () {},
                        iconSize: 40,
                      ),
                      const Text('Statistics')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.add_circle),
                        onPressed: () {},
                        iconSize: 40,
                      ),
                      const Text('Statistics')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.black12,
              ),
              margin: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Text('Apply TV+'),
                                const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black26,
                                )
                              ],
                            ),
                            const Text(
                              'Entartainment',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('4,89',
                            style: const TextStyle(
                              fontSize: 25,
                            )),
                      )
                    ]),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.black12,
              ),
              margin: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Text('Health Insurance'),
                                const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black26,
                                )
                              ],
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Health',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('89,49',
                            style: const TextStyle(
                              fontSize: 25,
                            )),
                      )
                    ]),
              ),
            ),
          ],
        ));

    // This trailing comma makes auto-formatting nicer for build methods
  }
}
