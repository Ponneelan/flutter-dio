import 'package:flutter/material.dart';
import 'package:theme/model.dart';

class DataPage extends StatefulWidget {
  DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  late Future<Data> futureData;

  @override
  void initState() {
    super.initState();
    futureData = getData();
    //print(getData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataPage'),
      ),
      body: FutureBuilder<Data>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //print(snapshot.data);
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(snapshot.data!.age.toString()),
                    Text(snapshot.data!.name)
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return const Text("Error");
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
