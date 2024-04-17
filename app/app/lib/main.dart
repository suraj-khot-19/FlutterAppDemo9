import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var arr = [
      "suraj",
      "adarsh",
      "shubh",
      "sonya",
      "purshya",
      "suraj",
      "adarsh",
      "shubh",
      "sonya",
      "purshya"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Showing List View Builder")),
          backgroundColor: Colors.black38,
        ),
        body: Expanded(
          child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      arr[index],
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 140, 255),
                      ),
                    ),
                    subtitle: const Text(
                      "Bio:.....",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    leading: CircleAvatar(child: Image.asset('assets/im.jpeg')),
                    trailing: const Wrap(
                      spacing: 10,
                      children: [
                        Icon(Icons.call),
                        Icon(Icons.message),
                        Icon(Icons.video_call),
                      ],
                    ));
              }),
        ),
      ),
    );
  }
}
