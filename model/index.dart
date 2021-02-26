import 'dart:convert';
import 'package:flutter_application_test/screen/prospect/model/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  ProspectList prospectList;
  bool loading;
  String name;

  Future<ProspectList> _fetchDatas() async {
    setState(() => loading = true);

    final response = await http.get('run.mocky.io/v3/ad6092cd-3b2d-4b62-92f1-4198f697f3d3');
    if (response.statusCode == 200) {
      final datas = jsonDecode(response.body);
      final prospectListFromJson = ProspectList.fromJson(datas);
      return prospectListFromJson;
    } else {
      print(response.statusCode);
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Widget prospectData() {
    return FutureBuilder(
        future: _fetchDatas(),
        builder: (BuildContext context, AsyncSnapshot<ProspectList> snapshot) {
          if (snapshot.hasData) {
            prospectList = snapshot.data;
            if (prospectList != null) {
              return ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 1,
                  color: Colors.black87,
                ),
                itemCount: prospectList.data.length,
                itemBuilder: (context, i) {
                  final x = prospectList.data[i];
                  return ListTile(
                    title: Text(x.firstname),
                    subtitle: Text(x.lastname),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(x.firstname[0],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerInfo())),
                  );
                },
              );
            } else {
              // Show some error message...
            }
          } else if (snapshot.hasError) {
            // Show some error message...
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prospect List"),
        centerTitle: true,
      ),
      body: prospectData(),
    );
  }
}
