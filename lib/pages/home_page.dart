
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Countdown',
          style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
       flexibleSpace: Container(
         decoration: const BoxDecoration(
           gradient: LinearGradient(colors: [
             Color(0xFF0B698B),
             Color(0xFF0396A6),
             Color(0xFF9CD3D8),
           ]
           ),
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(30),
                 bottomRight:Radius.circular(30) ,
               )
         ),
       ),
        actions: [

          IconButton(
            icon: const Icon(Icons.settings,color: Colors.white),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ],
        iconTheme: const IconThemeData(
       color: Colors.white,
    ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Events',
                labelStyle: const TextStyle(color:  Color(0xFF0B698B),),
                prefixIcon: const Icon(Icons.search,color:  Color(0xFF0B698B),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    color:  Color(0xFF0B698B),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  const Color(0xFF0B698B),
        onPressed: () {},
        child: const Icon(Icons.add,color: Colors.white,),


      ),
    );
  }
}