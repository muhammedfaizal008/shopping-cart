// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  List images;
  int index;
  List names;
   ProductDetails(this.images,this.index,this.names);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details",style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 25,
          letterSpacing: -1
        ),),
      actions: [
        Stack(
            children: [
              Container(
                child: Icon(Icons.notifications_outlined,size: 30,color: Colors.black,),
              ),
              Positioned(
                top: 2,
                right: 2,
                child:CircleAvatar(
                  radius: 7,
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
      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:[ 
                  Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index]))
                  ),
                ),
                Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Icon(Icons.favorite_border_outlined,size: 35,),
                              )
                              )
                ]
              ),
              Text(names[index],style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
                letterSpacing: -1 
              ),),
              SizedBox(height: 8,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.amber,),
                  SizedBox(width: 5,),
                  Text("4.5/5",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                  SizedBox(width: 5,),
                  Text("(45 reviews)")
                ],
              ),
              SizedBox(height: 10,),
              Text("The name says it all,the right size sightly snugs athe body leaving enough room for comfort in the sleeves and waist."
              ,style: TextStyle(
                fontSize: 16
              ),
              ),
              SizedBox(height: 10,),
              Text("Choose size",style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
                letterSpacing: -1 
              ),),
              SizedBox(height: 10,),
              Row(
                children: [
                  OutlinedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder())
                      ),
                      onPressed: (){}, child: Text("S",style: TextStyle(
                      fontSize:22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                    ),
                    SizedBox(width: 10,),
                    OutlinedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder())
                      ),
                      onPressed: (){}, child: Text("M",style: TextStyle(
                      fontSize:22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                    ),
                    SizedBox(width: 10,),
                    OutlinedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder())
                      ),
                      onPressed: (){}, child: Text("L",style: TextStyle(
                      fontSize:22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                    ),
                ],
              )
        
            ],
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(10),
        child: BottomAppBar(
          height: 90,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("₹ 1190",style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold, 
                ),)
                ],
              ),
              SizedBox(width: 50,),
              Expanded(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Add to Cart",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),)

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}