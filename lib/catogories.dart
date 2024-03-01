import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Product_List extends StatefulWidget {
  const Product_List({super.key});

  @override
  State<Product_List> createState() => _Product_ListState();
}

class _Product_ListState extends State<Product_List> {


  List name = ["Best Seller","Top Trending", "New Arrival", "Upcoming", "Sale"];
  List image = ["images/laptop 1.jpg","images/laptop 2.jpg","images/laptop 3.jpg","images/laptop 4.jpg","images/laptop 5.jpg","images/laptop 6.jpg","images/laptop 7.jpg","images/laptop 8.jpg"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Categories',style: GoogleFonts.merriweather(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black),
            onPressed: (){
            }),
        actions: [
          Icon(Icons.tune_outlined, color: Colors.black,),
          SizedBox(
            width: 10,
          )

        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                itemCount: name.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {

                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      width: 120,
                      height: 60,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: currentIndex == index ? Colors.black : Colors.transparent,
                      ),child: Text(name[index],style: TextStyle(color: currentIndex == index ? Colors.white : Colors.black)),
                    ),
                  );
                },),
            ),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              children: List.generate(image.length, (index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image[index]),),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14),
                ),
                width: 60,
                height: 60,
              )),)
          ],
        ),
      ),
    );
  }
}
