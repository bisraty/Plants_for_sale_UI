import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';
class Page2 extends StatelessWidget {
   Page2({required this.name,required this.image,required this.price} );
  final String image;
  final String name;
final String price;

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body:Column(
        children: [
         Container(
           child: Row(
             children: [
               Expanded(child: Container(
                 child: Column(

                   children: [
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },
                         icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                     SizedBox(
                       height:size.height*.22,
                     ),
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },
                         icon: SvgPicture.asset("assets/icons/sun.svg")),
                     SizedBox(
                       height: 30,
                     ),
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },

                         icon: SvgPicture.asset("assets/icons/icon_2.svg")),
                     SizedBox(
                       height: 30,
                     ),
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },
                         icon: SvgPicture.asset("assets/icons/icon_3.svg")),
                     SizedBox(
                       height: 30,
                     ),
                     IconButton(onPressed: (){
                       Navigator.pop(context);
                     },
                         icon: SvgPicture.asset("assets/icons/icon_4.svg")),


                   ],
                 ),
               )),
               Container(
                 height: size.height*0.8,
                 width: size.width*0.8,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(65),
                         bottomLeft: Radius.circular(65)
                     ),
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(0,10),
                         blurRadius: 60,
                           color: PrimaryColor.withOpacity(0.5)

                       )
                     ],
                     image: DecorationImage(
                         alignment: Alignment.center,
                         fit: BoxFit.cover,
                         image: AssetImage(image)
                     )
                 ),


               ),

             ],
           ),
         ),
          Expanded(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all( 8.0,),
                      child: Text(name,
                        style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ) ,),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Text("Ethiopia",
                        style:TextStyle(
                          color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ) ,),
                     ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all( 15.0),
                  child: Text(price,
                    style:TextStyle(
                      color: PrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ) ,),
                ),

              ],
            ),
          ))
        ],

      ),
      bottomNavigationBar: Container(
        height: 60,

        child: Row(
          children: [
           SizedBox(
             width: size.width/2,
             height: 80,
             child:  FlatButton(onPressed: (){},
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(20))
               ),

               color: PrimaryColor,
               child:Text(" Buy Now",
                 style:TextStyle(
                     color: Colors.white,
                     fontSize: 28,
                     fontWeight: FontWeight.bold
                 ) ,),),
           ),
            SizedBox(
              width: size.width/2,
              height: 80,
              child:  FlatButton(onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                ),


                child:Text("Description",
                  style:TextStyle(

                      fontSize: 27,

                  ) ,),),
            )

          ],
        ),
      ),
    );
  }
}
