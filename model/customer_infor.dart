import 'package:flutter/material.dart';
import 'package:flutter_application_test/screen/prospect/model/datum.dart';
import 'package:flutter_application_test/screen/prospect/model/services.dart';

// ignore: must_be_immutable
class CustomerInfo extends StatelessWidget {
  ProspectList prospectList;

  CustomerInfo({this.prospectList, this.data});

  @override
  Widget build(BuildContext context) {
    var i;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Prospect Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                // ListTile(
                //     title: Text('Firstname'),
                //     subtitle: Text(
                //       prospectList.data[i].firstname,
                //     )),
                // ListTile(
                //     title: Text('Last Name'),
                //     subtitle: Text(
                //       prospectList.data[i].firstname,
                //     )),
                // ListTile(
                //     title: Text('Phone Number'),
                //     subtitle: Text(
                //       prospectList.data[i].firstname,
                //     )),
                // ListTile(
                //     title: Text('Speculated Amount'),
                //     subtitle: Text('${prospectList.data[i].amountSpeculated}')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ${post.userId}
