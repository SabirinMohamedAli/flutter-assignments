// resturant.dart
import 'package:flutter/material.dart';

class RestaurantMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' resturant'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          MenuItem(
            image: 'assets/1.JFIF', 
            title: 'macroni pasta',
          ),
          MenuItem(
            image: 'assets/2.JFIF', 
            title: 'pasta',
          ),
          MenuItem(
            image: 'assets/3.JFIF', 
            title: 'Cheese Pizza',
          ),
          MenuItem(
            image: 'assets/4.JFIF', 
            title: 'chicken',
          ),
          MenuItem(
            image: 'assets/5.jpg', 
            title: 'fish',
          ),
          MenuItem(
            image: 'assets/6.jpg', 
            title: 'fish with salad',
          ),

           MenuItem(
            image: 'assets/7.jpg', 
            title: 'shuwarma',
          ),


    
        
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String image;
  final String title;

  MenuItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(image, width: 50, height: 50),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        tileColor: Colors.orange[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
