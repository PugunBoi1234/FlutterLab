import 'package:first_app/constants/app_text_styles.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/screens/login_screen.dart';
import 'package:first_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final List<String> names = [
    'John Smith',
    'Jane Smith',
    'Bob Smith',
    'Alice Smith',
  ];

  final photo = [
    {
      'name': 'John Smith',
      'image': 'https://picsum.photos/200/300',
    },
    {
      'name': 'Jane Smith',
      'image': 'https://picsum.photos/200/300',
    },
    {
      'name': 'Bob Smith',
      'image': 'https://picsum.photos/200/300',
    },
    {
      'name': 'Alice Smith',
      'image': 'https://picsum.photos/200/300',
    },   
  ];

  final pages = [
    HomeScreen(),
    LoginScreen(),
    ProfileScreen(),
    HomeScreen(),
  ];

  int page_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 34.0,
            color: Colors.black,
          ),
        ),
        title: Text('List view widgets', style: AppTextStyles.topic),
      ),

      body: pages[page_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page_index,
        onTap: (index) {
          setState((){
            page_index = index;
          });

        },

        backgroundColor: Colors.cyanAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 34.0,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 34.0,), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 34.0,), label: 'Person'),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, size: 34.0,), label: 'Exit'),
        ],
      ),

    );
  }
}

//  class ItemMenuListview3 extends StateLessWidget {
//    const ItemMenuListview3({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//          appBar: AppBar(
//            title: Text('List view widgets', style : AppTextStyles.topic),
//          ),
//
//          body: listView.seperated(
//           itemCount: 10,
//           itemBuilder: (context, index) => ListTile(
//             title: Text
//         );
//       }
//  }

  class ItemMenuListview2 extends StatelessWidget {
    const ItemMenuListview2({super.key, required this.names});

    final List<String> names;

    @override
    Widget build(BuildContext context) {
      return ListView.builder(
           itemCount: names.length,
           itemBuilder: (context, index) {
            return ListTile(title: Text(names[index]));
           },
      );
    }
  }

  class ItemMenuWidget extends StatelessWidget {
    const ItemMenuWidget({super.key});

    @override
    Widget build(BuildContext context) {
      return ListView(
        children: [
          GestureDetector(
            onTap: () {
              print('Item1 clicked');
            },
            child: ListTile(title: Text('Item1')),
          ),

          Divider(color: Colors.black, thickness: 1.0,),
          ListTile(title: Text('Item3'),),
          Divider(color: Colors.black, thickness: 1.0,),
        ],
      );
  }
}

