import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 480,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.grey,
            )
          ],
          color: Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5, 7, 5, 7),
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Text(
                    "50% OFF",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Iconsax.heart_add_bulk,
                  color: Colors.lightBlueAccent,
                  size: 30,
                ),
              ],
            ),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAHtCmA_RepVfTf_9blQPO98NK3yYWg49VaA&s'
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike Air Shoes",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "\$450",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "\$500",
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
