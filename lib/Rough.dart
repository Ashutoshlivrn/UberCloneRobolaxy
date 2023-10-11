// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<ListTile> _listTiles = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListTile Example'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               width: 300.0,
//               height: 300.0,
//               color: Colors.white,
//               padding: EdgeInsets.all(16.0),
//               child: ListView(
//                 children: _listTiles,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 _addListItem();
//               },
//               child: Text('Add Item'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _addListItem() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         TextEditingController textController = TextEditingController();
//
//         return AlertDialog(
//           title: Text('Enter Details'),
//           content: TextField(
//             controller: textController,
//             decoration: InputDecoration(hintText: 'Enter details'),
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _listTiles.add(
//                     ListTile(
//                       title: Text(textController.text),
//                       onTap: () {
//                         _onTileTap(_listTiles.length);
//                       },
//                     ),
//                   );
//                 });
//
//                 Navigator.pop(context);
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _onTileTap(int index) {
//     setState(() {
//       for (int i = 0; i < _listTiles.length; i++) {
//         _listTiles[i] = ListTile(
//           title: Text( 'aman'   ),
//           //Text(_listTiles[i].title.toString()),
//           onTap: () {
//             setState(() {
//               _onTileTap(i);
//             });
//
//           },
//           selected: i == index,
//           trailing: i == index
//               ? Icon(
//                   Icons.star,
//                   color: Colors.yellow,
//                 )
//               : null,
//           tileColor: i == index ? Colors.yellow.withOpacity(0.5) : null,
//         );
//       }
//     });
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedContainerIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Example'),
      ),
      body: Center(
        child: Column(

          children: [
            ContainerItem(
              index: 0,
              isSelected: _selectedContainerIndex == 0,
              onPressed: () {
                _selectContainer(0);
              },
            ),
            ContainerItem(
              index: 1,
              isSelected: _selectedContainerIndex == 1,
              onPressed: () {
                _selectContainer(1);
              },
            ),
            ContainerItem(
              index: 2,
              isSelected: _selectedContainerIndex == 2,
              onPressed: () {
                _selectContainer(2);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _selectContainer(int index) {
    setState(() {
      _selectedContainerIndex = index;
    });
  }
}

class ContainerItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function onPressed;

  ContainerItem({
    required this.index,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed as void Function()?,
      child: Container(
        width: 200.0,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.yellow : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.star,
                color: isSelected ? Colors.yellow : Colors.black,
              ),
            ),
            Text(
              'Container $index',
              style: TextStyle(
                fontSize: 16.0,
                color: isSelected ? Colors.yellow : Colors.black,
              ),
            ),
            if (isSelected)
              Icon(
                Icons.star,
                color: Colors.yellow,
              )
            else
              Container(),
          ],
        ),
      ),
    );
  }
}
