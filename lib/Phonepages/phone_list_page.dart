import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice1/Phonepages/Unilag_Lasu_hostel.dart';
import 'package:practice1/list.dart';
import 'package:practice1/useful_folders/pharmacy.dart';
import 'package:practice1/useful_folders/religious_centres.dart';
import 'package:practice1/useful_folders/restaurants.dart';

import '../useful_folders/hospitals.dart';
import '../useful_folders/sport_venue.dart';
import '../useful_folders/supermarket.dart';

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
              onTap: () {
                if(myList[val]['Item'].toString() == 'Accommodation')
                  {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                          builder: (context){
                            return const HostelSelection();
                          },
                      ),
                    );
                  }
                else
                  {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context){
                          if(myList[val]['Item'].toString() == 'Sport venue')
                            {
                              return const SportVenue();
                            }
                          else if(myList[val]['Item'].toString() == 'Religious Centre')
                            {
                              return const ReligiousCentres();
                            }
                          else if(myList[val]['Item'].toString() == 'Restaurants')
                            {
                              return const Restaurants();
                            }
                          else if(myList[val]['Item'].toString() == 'Hospitals')
                          {
                              return const HospitalCentres();
                          }
                          else if(myList[val]['Item'].toString() == 'Pharmacy')
                          {
                              return const Pharmacy();
                          }
                          else if(myList[val]['Item'].toString() == 'Supermarket')
                          {
                              return const Supermarket();
                          }
                          return Container();
                        },
                    ),
                    );
                  }
              },
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
