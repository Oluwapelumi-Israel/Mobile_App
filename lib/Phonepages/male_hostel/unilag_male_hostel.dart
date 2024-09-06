import 'package:flutter/material.dart';
import 'package:practice1/list.dart';


class UnilagMaleHostel extends StatelessWidget
{
  const UnilagMaleHostel({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:25.0),
        child: ListView.builder(
            itemCount: unilagMaleHostel.length,
            itemBuilder: (context, value){
              return Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      unilagMaleHostel[value]['image'],
                    ),
                    const SizedBox(height: 10,),
                    Text(unilagMaleHostel[value]['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color.fromRGBO(128, 0, 0, 1)
                      ),

                    ),
                    const SizedBox(height: 10,),
                    Text(unilagMaleHostel[value]['address'],
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
    );
  }
}