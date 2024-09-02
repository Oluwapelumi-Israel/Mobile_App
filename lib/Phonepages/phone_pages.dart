import 'package:flutter/material.dart';
import 'package:practice1/Phonepages/phone_list_page.dart';

class PhoneLayout extends StatefulWidget {
  const PhoneLayout({super.key});

  @override
  State<PhoneLayout> createState() => _PhoneLayoutState();
}

class _PhoneLayoutState extends State<PhoneLayout> {

  int isActive = 0;

  @override

  void initState()
  {
    super.initState();
    isActive = 0;
  }

  Widget displayWidget(int value)
  {
    if(value == 0)
    {
      return Image.asset(
        'assets/images/fasu_logo-removebg-preview.png',
        height: MediaQuery.of(context).size.height*0.4,
        width: MediaQuery.of(context).size.height*0.4,
      );
    }
    else if(value == 1)
    {
      return const PhoneList();
    }

    return const Center(child: Text('Notification'),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
        title: const Text(
          'FASU GAME',
          style: TextStyle(
            color: Color.fromRGBO(128, 0, 0, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            isActive == 1 ? const SizedBox(height: 20,) :const Spacer(
              flex: 1,
            ),
            displayWidget(isActive),
            isActive == 1 ? const SizedBox() :const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (){
                        setState(() {
                          isActive = 0;
                        });
                    },
                    icon: const Icon(
                        Icons.home,
                    ),
                  iconSize: 40.0,
                  color: isActive == 0 ? const Color.fromRGBO(128, 0, 0, 1) : Colors.white,
                ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        isActive = 1;
                      });
                    },
                    icon: const Icon(
                        Icons.list
                    ),
                    iconSize: 40.0,
                    color: isActive == 1 ? const Color.fromRGBO(128, 0, 0, 1) : Colors.white,
                ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        isActive = 2;
                      });
                    },
                    icon: const Icon(
                        Icons.notifications
                    ),
                    iconSize: 40.0,
                    color: isActive == 2 ? const Color.fromRGBO(128, 0, 0, 1) : Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}

