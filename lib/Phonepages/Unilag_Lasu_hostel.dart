import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice1/Phonepages/female_hostel/lasu_female_hostel.dart';
import 'package:practice1/Phonepages/female_hostel/unilag_female_hostel.dart';
import 'package:practice1/Phonepages/male_hostel/lasu_male_hostel.dart';
import 'package:practice1/Phonepages/male_hostel/unilag_male_hostel.dart';

class HostelSelection extends StatefulWidget {
  const HostelSelection({super.key});

  @override
  State<HostelSelection> createState() {
    return _HostelSelectionState();
  }
}

class _HostelSelectionState extends State<HostelSelection> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
        title: const Text(
          'FASU GAME',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(128, 0, 0, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            hostelSelection('UNILAG HOSTELS'),
            isActive == 1 ? hostelSelection('MALE HOSTEL') : Container(),
            isActive == 1 ? hostelSelection('FEMALE HOSTEL') : Container(),
            hostelSelection('LASU HOSTELS'),
            isActive == 2 ? hostelSelection('MALE HOSTEL') : Container(),
            isActive == 2 ? hostelSelection('FEMALE HOSTEL') : Container(),
          ],
        ),
      ),
    );
  }

  Widget hostelSelection(String hostelName) {
    return ListTile(
      leading: Icon(
        hostelName == 'UNILAG HOSTELS' || hostelName == 'LASU HOSTELS'
            ? Icons.home
            : hostelName == 'MALE HOSTEL'
                ? Icons.male_sharp
                : Icons.female_sharp,
        color: const Color.fromRGBO(128, 0, 0, 1),
      ),
      trailing: Icon(
        hostelName == 'UNILAG HOSTELS' || hostelName == 'LASU HOSTELS'
            ? Icons.arrow_drop_down_sharp
            : Icons.ads_click,
        color: const Color.fromRGBO(128, 0, 0, 1),
      ),
      title: Text(
        hostelName,
        style: const TextStyle(
          color: Color.fromRGBO(128, 0, 0, 1),
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      onTap: () {
        if (hostelName == 'UNILAG HOSTELS') {
          if (isActive > 0 && isActive == 2) {
            setState(() {
              isActive = 1;
            });
          } else if (isActive == 0) {
            setState(() {
              isActive = 1;
            });
          } else {
            setState(() {
              isActive = 0;
            });
          }
        } else if (hostelName == 'LASU HOSTELS') {
          if (isActive > 0 && isActive == 1) {
            setState(() {
              isActive = 2;
            });
          } else if (isActive == 0) {
            setState(() {
              isActive = 2;
            });
          } else {
            setState(() {
              isActive = 0;
            });
          }
        } else if (isActive == 1) {
          if (hostelName == 'MALE HOSTEL') {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) {
                  return const UnilagMaleHostel();
                },
              ),
            );
          } else {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) {
                  return const UnilagFemaleHostel();
                },
              ),
            );
          }
        }
        else if(isActive == 2)
          {
            if (hostelName == 'MALE HOSTEL') {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const LasuMaleHostel();
                  },
                ),
              );
            } else {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const LasuFemaleHostel();
                  },
                ),
              );
            }
          }
      },
    );
  }
}
