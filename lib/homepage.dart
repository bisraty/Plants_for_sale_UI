import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_shop/constants.dart';
import 'package:plant_shop/page2.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){},
            icon: SvgPicture.asset("assets/icons/menu.svg")),
      ),
      body: ListView(
        children: [
          Column(
            children: [

              Container(
                height: size.height*.2,

                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 56
                      ),
                      height: size.height*.2 -27,
                      decoration: BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36),
                          )
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(" Welcome to BM shop!!!  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Spacer(),
                          Image.asset("assets/images/logo.png",

                          )

                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                        left:0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          margin:EdgeInsets.symmetric(horizontal: 20.0),
                          height: 54,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,10),
                                blurRadius: 50,
                                color: PrimaryColor.withOpacity(0.5)
                              )
                            ]
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                   hintStyle: TextStyle(
                                     color: PrimaryColor.withOpacity(0.5),
                                   ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none
                                  ),
                                ),
                              ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/search.svg")),

                            ],
                          ),
                        ))

                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Recommended",
                  style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ) ,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FlatButton(onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: PrimaryColor,
                  child: Text("more",
                  style:TextStyle(
                    color: Colors.white,

                  ) ,),),
              )
            ],),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),

            height: size.height*0.4,

           // color: Colors.teal,
            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                InkWell(

                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height:size.height*0.27,
                          width: size.width*.4,
                         child: Center(child: Image.asset(ListOfPlants().getListOfWets[0].image)),

                        ),
                             SizedBox(
                               height: 5,
                             ),
                             Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(ListOfPlants().getListOfWets[0].name,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(ListOfPlants().getListOfWets[0].Price,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(
                        image: ListOfPlants().getListOfWets[0].image,
                        name: ListOfPlants().getListOfWets[0].name,
                        price:  ListOfPlants().getListOfWets[0].Price,
                      )));
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(ListOfPlants().getListOfWets[1].image),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(ListOfPlants().getListOfWets[1].name,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(ListOfPlants().getListOfWets[1].Price,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(
                        image: ListOfPlants().getListOfWets[1].image,
                        name: ListOfPlants().getListOfWets[1].name,
                        price:  ListOfPlants().getListOfWets[1].Price,
                      )));
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(
                      image: ListOfPlants().getListOfWets[2].image,
                      name: ListOfPlants().getListOfWets[2].name,
                      price:  ListOfPlants().getListOfWets[2].Price,
                    )));
                  });
                },
                  child: Container(
                     child: Column(

                      children: [
                        Image.asset(ListOfPlants().getListOfWets[2].image),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(ListOfPlants().getListOfWets[2].name,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(ListOfPlants().getListOfWets[2].Price,
                              style: TextStyle(
                                color:PrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
               InkWell(
                 onTap: (){
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(
                       image: ListOfPlants().getListOfWets[3].image,
                       name: ListOfPlants().getListOfWets[3].name,
                       price:  ListOfPlants().getListOfWets[3].Price,
                     )));
                   });
                 },
                 child: Container(

                   child: Column(
                     children: [
                       Image.asset(ListOfPlants().getListOfWets[3].image),
                       SizedBox(
                         height: 5,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(ListOfPlants().getListOfWets[3].name,
                             style: TextStyle(
                               color:PrimaryColor,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           SizedBox(
                             width: 20,
                           ),
                           Text(ListOfPlants().getListOfWets[2].Price,
                             style: TextStyle(
                               color:PrimaryColor,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               ) 
              ],
            )

          ),
          Container(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Featured Plants",
                    style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ) ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FlatButton(onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: PrimaryColor,
                    child: Text("more",
                      style:TextStyle(
                        color: Colors.white,

                      ) ,),),
                )
              ],),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),

              height: size.height*0.4,

              // color: Colors.teal,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [

                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      child: Image.asset("assets/images/bottom_img_1.png",
                        fit: BoxFit.fill,),
                       ),
                  ),
                  SizedBox(
                    width: 10,
                  ), InkWell(
                    child: Container(
                      child: Image.asset("assets/images/bottom_img_2.png",
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              )

          )
        ],
      ),

     bottomNavigationBar: Container(
       height: 70,
       decoration: BoxDecoration(
           color:Colors.white,
           borderRadius: BorderRadius.circular(20),
           boxShadow: [
             BoxShadow(
                 offset: Offset(0,10),
                 blurRadius: 50,
                 color: PrimaryColor.withOpacity(0.5)
             )
           ]

       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(onPressed: (){},
                 icon: SvgPicture.asset("assets/icons/flower.svg")),
             IconButton(onPressed: (){},

                 icon: SvgPicture.asset("assets/icons/heart-icon.svg",
                   )),
             IconButton(onPressed: (){},
                 icon: SvgPicture.asset("assets/icons/user-icon.svg"),
               )
           ],
         ),
       ),
     ),

    );
  }
}
