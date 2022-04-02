import 'package:fetch_data/data/data_provider/data_provider.dart';
import 'package:fetch_data/data/modal/data.dart';
import 'package:fetch_data/routes/router.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

final _appRouter = AppRouter();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Datum>? futurePost;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    futurePost = await DataProvider().fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Fetch Data',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Fetch Data Example'),
      //   ),
      //   body: FutureBuilder<List<Datum>>(
      //     future: DataProvider().fetchPost(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return ListView.builder(
      //           itemCount: snapshot.data!.length,
      //           itemBuilder: (context, index) => Container(
      //             margin:
      //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //             padding: const EdgeInsets.all(20.0),
      //             decoration: BoxDecoration(
      //               color: const Color(0xff97FFFF),
      //               borderRadius: BorderRadius.circular(15.0),
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   snapshot.data![index].email,
      //                   style: const TextStyle(
      //                     fontSize: 18.0,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 const SizedBox(height: 10),
      //                 Text(snapshot.data![index].firstName),
      //                 const SizedBox(height: 10),
      //                 TextButton(
      //                   onPressed: () {},
      //                   child: const Text('Go To Profile'),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       } else {
      //         return const Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
