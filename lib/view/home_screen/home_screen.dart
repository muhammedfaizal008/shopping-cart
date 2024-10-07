// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/view/product_details/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List names=[
      "All",
      "Men",
      "Women",
      "Kids",
      "Beauty"
    ];
    List names2=[
      "Regular fit polo",
      "Regular fit slogan",
      "Regular fit color block",
      "Regular fit v-neck",
      "Regular fit polo",
      "Regular fit slogan",
      "Regular fit color block",
      "Regular fit v-neck",
      "Regular fit polo",
      "Regular fit slogan",
      "Regular fit color block",
      "Regular fit v-neck",
    ];
    List images = [
      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTaw56DqTVSH5HIFE7jYP5PIDKSl30aLCL1xkxP6OFTh6XBi_O26j2bKsjpjeCObp29eIXPD4_NyxTOMoapbrLi8bUginK1T0w2f2060kLX7-XcawjBiU-G&usqp=CAc",
      "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTmWQoKauwsjxKbD4Oa0PxjobaeauvogsCRJiuvEZ2hzVj6lGhKZ8HaHLz1kr2UhVDdNdugyJburoy-UtGuiI871oGOoqyo8wVsCuIA1edVaJp3MOqOTVBt4saM3jmUCBw00ZVRqys&usqp=CAc",
      "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSWHPRtwv9TNSfpvB2Ex11Ml-7W378EgCLSPlWXgwWVD0gLql-IVuyfI_I7SDfAjk5ZUYkYYNMdpR7odHBEfUvQSoijPMAdG2j-7FadOGM8faOrNocdmgm8&usqp=CAc",
      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT0fTUGZYWTZxorYGzj6RF2TdYI9jcZEwoL48tk5o9Eo2km0cjAmgrdSGn-lUvaje9C5qXZF-lGw3v8UG0FdltGnv4sTZUc-QdHn14f65MiwbguZcrhIyZBu6H2oyB5pVrcZRr-Cg&usqp=CAc",
      "https://assets.ajio.com/medias/sys_master/root/20231124/mmCL/6560cf42ddf77915199a43e6/-473Wx593H-466823595-black-MODEL.jpg",
      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTaw56DqTVSH5HIFE7jYP5PIDKSl30aLCL1xkxP6OFTh6XBi_O26j2bKsjpjeCObp29eIXPD4_NyxTOMoapbrLi8bUginK1T0w2f2060kLX7-XcawjBiU-G&usqp=CAc",
      "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTmWQoKauwsjxKbD4Oa0PxjobaeauvogsCRJiuvEZ2hzVj6lGhKZ8HaHLz1kr2UhVDdNdugyJburoy-UtGuiI871oGOoqyo8wVsCuIA1edVaJp3MOqOTVBt4saM3jmUCBw00ZVRqys&usqp=CAc",
      "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSWHPRtwv9TNSfpvB2Ex11Ml-7W378EgCLSPlWXgwWVD0gLql-IVuyfI_I7SDfAjk5ZUYkYYNMdpR7odHBEfUvQSoijPMAdG2j-7FadOGM8faOrNocdmgm8&usqp=CAc",
      "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT0fTUGZYWTZxorYGzj6RF2TdYI9jcZEwoL48tk5o9Eo2km0cjAmgrdSGn-lUvaje9C5qXZF-lGw3v8UG0FdltGnv4sTZUc-QdHn14f65MiwbguZcrhIyZBu6H2oyB5pVrcZRr-Cg&usqp=CAc",
      "https://assets.ajio.com/medias/sys_master/root/20231124/mmCL/6560cf42ddf77915199a43e6/-473Wx593H-466823595-black-MODEL.jpg",
      "https://assets.ajio.com/medias/sys_master/root/20231124/mmCL/6560cf42ddf77915199a43e6/-473Wx593H-466823595-black-MODEL.jpg",
      "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSWHPRtwv9TNSfpvB2Ex11Ml-7W378EgCLSPlWXgwWVD0gLql-IVuyfI_I7SDfAjk5ZUYkYYNMdpR7odHBEfUvQSoijPMAdG2j-7FadOGM8faOrNocdmgm8&usqp=CAc"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Discover",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          letterSpacing: -2
        ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                child: Icon(Icons.notifications_outlined,color: Colors.black,),
              ),
              Positioned(
                top: 2,
                right: 2,
                child:CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.black,
                  child: Text("1",style: TextStyle(
                    color: Colors.white,
                    fontSize: 5
                  ),
                  ),
                ) 
              ),
            ],
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search anything",hintStyle: TextStyle(fontSize: 14,letterSpacing: 0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(Icons.menu,color: Colors.white,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 35,
              child: ListView.builder(
                itemCount: names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) => Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: (index==0)?Colors.black:Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child: Text(names[index],style: TextStyle(
                    color: index==0?Colors.white:Colors.grey.shade700
                  ),
                  ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: names2.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 200
                  ),
                  itemBuilder: (context, index) =>Stack(
                    children: [
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => ProductDetails(images,index,names2),));
                      },
                       child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity, 
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(images[index])
                                )
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(names2[index],style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0
                            ),),
                            Text("PKR 1190",style: TextStyle(
                              fontSize: 10, 
                            ),
                            ),
                            
                          ],
                        ),
                        ),
                     ),
                      Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(Icons.favorite_border_outlined),
                            )
                            )
                    ]               
                  ) 
              ,),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 65,
        color: Colors.white,
        elevation: 20,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.home_outlined),
                  Text("Home",style: TextStyle(
                    fontSize: 10,
                  ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite_outline),
                  Text("Saved",style: TextStyle(
                    fontSize: 10,
                  ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text("Cart",style: TextStyle(
                    fontSize: 10,
                  ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.settings_outlined),
                  Text("Settings",style: TextStyle(
                    fontSize: 10,
                  ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}