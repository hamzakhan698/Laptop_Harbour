import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (context) => IconButton(onPressed: (){
                      Scaffold.of(context).openDrawer();
                    }, icon: const Icon(Icons.list)),),

                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                    )
                  ],
                ),

                const SizedBox(height: 20,),

                const SearchBar(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  hintText: "Search...",
                  trailing: [Icon(Icons.search, color: Colors.blue,)],
                ),

                const SizedBox(height: 20,),

                const Text("Categories", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),

                const SizedBox(height: 20,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Nike", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                    Text("Addidas", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                    Text("Puma", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                  ],
                ),

                const SizedBox(height: 20,),

                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  childAspectRatio: 200/250,
                  children: List.generate(10, (index) {
                    return Container(
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                spreadRadius: 1,
                                blurRadius: 10
                            )
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(image: AssetImage('images/shoe.jpg'))
                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("\$180", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                                  Icon(Icons.favorite)
                                ],
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Puma", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                                const Text("Puma", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),),

                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}