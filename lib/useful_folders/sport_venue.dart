import 'package:flutter/material.dart';
import 'package:practice1/list.dart';

class SportVenue extends StatefulWidget {
  const SportVenue({super.key});

  @override
  State<SportVenue> createState() {
    return _SportVenueState();
  }
}

class _SportVenueState extends State<SportVenue> {
  String isVenue = 'Unilag';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              child: isVenue == 'Unilag'
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          sportCentres['Unilag']['image'],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          sportCentres['Unilag']['name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(128, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          sportCentres['Unilag']['address'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color.fromRGBO(128, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(128, 0, 0, 1))
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Click Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          sportCentres['Lasu']['image'],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          sportCentres['Lasu']['name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(128, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          sportCentres['Lasu']['address'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color.fromRGBO(128, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(128, 0, 0, 1))),
                            onPressed: () {},
                            child: const Text(
                              'Click Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isVenue == 'Unilag' ? const Color.fromRGBO(128, 0, 0, 1) : Colors.white,)
                    ),
                    onPressed: () {
                      setState(() {
                        isVenue = "Unilag";
                      });
                    },
                    child: Text(
                      'UNILAG',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: isVenue == 'Unilag' ? Colors.white : const Color.fromRGBO(128, 0, 0, 1),),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isVenue == 'Lasu' ? const Color.fromRGBO(128, 0, 0, 1) : Colors.white,)
                    ),
                    onPressed: () {
                      setState(() {
                        isVenue = "Lasu";
                      });
                    },
                    child: Text(
                      'LASU',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: isVenue == 'Lasu' ? Colors.white : const Color.fromRGBO(128, 0, 0, 1),),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
