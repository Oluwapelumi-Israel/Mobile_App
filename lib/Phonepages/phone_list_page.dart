import 'package:flutter/material.dart';
import 'package:practice1/list.dart';

class PhoneList extends StatelessWidget {
  const PhoneList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, val) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {},
              leading: myList[val]['Icon'],
              title: Text(
                myList[val]['Item'].toString().toUpperCase(),
                style: const TextStyle(
                  color: Color.fromRGBO(128, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              trailing: const Icon(
                Icons.ads_click,
                color: Color.fromRGBO(128, 0, 0, 1),
              ),
            ),
          );
        },
      ),
    );
  }
}
