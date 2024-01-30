import 'package:flutter/material.dart';

void main() {
  // a global funtion that take widget to inflate and fill the entire screen.
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Nav bar
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Flutter is Fun1"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // a built-in function to process data
            setState(() {
              count++;
            });
            ;
          },
        ),
        body: Center(
          child: Text(
            style: const TextStyle(fontSize: 60),
            '$count',
          ),
        ),
      ),
    );
  }
}


// Container: a tool to layout a widget. like div in html.
//    Argument: child, a widget

// Center: a widget centrally display text


// low-level building blocks for layout

// flex layout: layout multiple widgets. like flexbox in css
// Column(): layout items vertically
//    children: a list

        // body: const Column(
        //   children: [
        //     Icon(Icons.backpack),
        //     Icon(Icons.backpack)
        //   ],


// Row(): layout items horizontally
// mainAxisAligment: alignment horizontally, default flex value: 1
// crossAxisAligment: alignment vertically
// Expanded: an expandable child in the children, used to give more space to a child
// Expanded(
//    flex: 4,
//    child: Icon(Icons.backpack),
// )

          // body: const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Icon(Icons.backpack),
          //     Icon(Icons.leaderboard),
          //     Icon(Icons.abc)
          //   ],



// Stack: layout widgets overlap another
//    children: the widgets within a stack
//               the order: the first the back, the last the top

// Positioned: to place a widget at a specific spot, like absolute positioning in css
// Align: relative positioning



// hight-level building blocks for layout: ui element out of box
// FloatingActionButton: btn appears at the bottom right and floating
//      // onPressed: the event handler to define function
// return MaterialApp(
//         home: Scaffold(
//       // Nav bar
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("Flutter is Fun"),
//       ),
//       // float button
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           print("press buttong");
//         },
//       ),

// bottomNavigationBar: widget of navigation icon at the bottom

    // return MaterialApp(
    //     home: Scaffold(
    //   // Nav bar
    //   appBar: AppBar(
    //     backgroundColor: Colors.green,
    //     title: const Text("Flutter is Fun"),
    //   ),
    //   // float button
    //   floatingActionButton: FloatingActionButton(
    //     child: const Icon(Icons.add),
    //     onPressed: () {
    //       print("press buttong");
    //     },
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(items: const [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       label: "Home",
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.business),
    //       label: "Business",
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.school),
    //       label: "School",
    //     ),
    //   ]),
    // ));


// scrollable widget

// ListView

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //           // Nav bar
  //           appBar: AppBar(
  //             backgroundColor: Colors.green,
  //             title: const Text("Flutter is Fun1"),
  //           ),
  //           body: ListView(
  //               scrollDirection: Axis.horizontal,
  //               addAutomaticKeepAlives: false,
  //               children: [
  //                 Container(width: 400, color: Colors.amber),
  //                 Container(width: 400, color: Colors.blueAccent),
  //                 Container(width: 400, color: Colors.redAccent),
  //               ])));
  // }


// builder: a function to map a list of data to a list of widgets 
        // body: ListView.builder(
        //   itemBuilder: (_, index) {
        //     return Container(
        //       color: randomColor(),
        //       width: 400,
        //       height: 400,
        //     );
        //   },
        // ),


// A class extends from the StatelessWidget UI element, a dumb widget to paint pixels to the screen.

// stateful: state or the data that changes throughout the life cycle of the app, data is mutatable
// statefulWidget: 
//    2 parts:  1. keep the widget immutable. 2. state class: process mutable data
//     state can create variable, and use setstate function to process data


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // Nav bar
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const Text("Flutter is Fun1"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             // a built-in function to process data
//             setState(() {
//               count++;
//             });
//             ;
//           },
//         ),
//         body: Center(
//           child: Text(
//             style: const TextStyle(fontSize: 60),
//             '$count',
//           ),
//         ),
//       ),
//     );
//   }
// }




// initState() function to initialize data from database
// @override
// void initState() {
//   super.initState();
  
// }


// dispose(): when the ui widget is removed from the ui
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

// Icon(Icons.some_icon)

// bootstrop
//
