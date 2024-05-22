import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task(),
    );
  }
}

class Task extends StatelessWidget {
  const Task({super.key});

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Colors.amber,
        centerTitle: true,

      actions: [
        IconButton(onPressed: (){},
            icon: const Icon(Icons.search)),
        IconButton(onPressed: (){},
            icon: const Icon(Icons.mail))
      ],
      leading: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.person),
      ),
      ),
      body:
      Center(
        child: Column(
        children: <Widget>[
          const SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
              Container(
                child: const Image(
                  image: AssetImage('assets/fardin.jpg')

                ),
                height: 100,
                // width: 100,
              )


          ),

          const SizedBox(height: 10,),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/fardin.jpg'),
            radius: 80,

          ),
          const SizedBox(height: 50,),
          const Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.people,size: 40,),
                SizedBox(width: 20,),
                Text('Fardin Rahman',style: TextStyle(fontSize: 30),),
              ],
            ),
          ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ID Number',
                    hintText: 'Your Number Here'
                ),
              ),
            ),

          ],
          ),
]
      ),
      )
      );
  }
}


