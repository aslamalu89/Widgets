import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio dio = Dio();
  List<dynamic> responseData = [];

  void fetchData() async {
    try {
      final response = await dio.get('https://reqres.in/api/unknown');
      if (response.statusCode == 200) {
        setState(() {
          responseData = response.data['data'];
        });
      } else {
        print('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio HTTP Example'),
      ),
      body: responseData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: responseData.length,
        itemBuilder: (context, index) {
          final item = responseData[index];
          return Card(
            child: ListTile(

              title: Text('Name: ${item['name']}'),
              subtitle: Text('Year: ${item['year']}'),

            ),
          );
        },
      ),
    );
  }
}
