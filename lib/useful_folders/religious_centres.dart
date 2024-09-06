import 'package:flutter/material.dart';
import 'package:practice1/list.dart';

class ReligiousCentres extends StatefulWidget {
  const ReligiousCentres({super.key});

  @override
  State<ReligiousCentres> createState() {
    return _ReligiousCentresState();
  }
}

class _ReligiousCentresState extends State<ReligiousCentres> {
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
              child: isVenue == 'Unilag'? ListView.builder(
                  itemCount: religiousCentres['Unilag'].length,
                  itemBuilder: (context, value){
                    return Container(
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            religiousCentres['Unilag'][value]['image'],
                          ),
                          const SizedBox(height: 10,),
                          Text(religiousCentres['Unilag'][value]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color.fromRGBO(128, 0, 0, 1)
                            ),

                          ),
                          const SizedBox(height: 10,),
                          Text(religiousCentres['Unilag'][value]['address'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Color.fromRGBO(128, 0, 0, 1)
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(128, 0, 0, 1))
                              ),
                              onPressed: () {  },
                              child: const Text('Click Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }
              ):
              ListView.builder(
                  itemCount: religiousCentres['Lasu'].length,
                  itemBuilder: (context, value){
                    return Container(
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            religiousCentres['Lasu'][value]['image'],
                          ),
                          const SizedBox(height: 10,),
                          Text(religiousCentres['Lasu'][value]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color.fromRGBO(128, 0, 0, 1)
                            ),

                          ),
                          const SizedBox(height: 10,),
                          Text(religiousCentres['Lasu'][value]['address'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Color.fromRGBO(128, 0, 0, 1)
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(128, 0, 0, 1))
                              ),
                              onPressed: () {  },
                              child: const Text('Click Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }
              ),
          ),
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
