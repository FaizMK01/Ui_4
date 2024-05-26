import 'package:flutter/material.dart';

class ViewFour extends StatelessWidget {
  const ViewFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/main.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 300,  // Set a specific height for the ListView
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      reusableContainer('images/2.jpg'),
                      reusableContainer('images/3.jpg'),
                      reusableContainer('images/4.jpg'),
                      reusableContainer('images/5.jpg')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget reusableContainer(String image1) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 35),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image1),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text('23 m'),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                'Gold Gate\nBridge',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.star_border,
                  size: 30,
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
