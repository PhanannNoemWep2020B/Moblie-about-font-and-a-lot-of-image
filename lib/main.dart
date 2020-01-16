import 'package:flutter/material.dart';

void main() =>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Container weddingBox(String images1,String images2){
    return Container(
       margin: EdgeInsets.only(top:10.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.network(images1,
                    fit: BoxFit.cover,
                    width: 200.0,
                    ),
                    Image.network(images2,
                    fit: BoxFit.cover,
                    width: 200.0,
                )
          ],
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My lady shop",style: TextStyle(fontFamily: "shop"),),
          backgroundColor: Colors.pink[900],
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child:Icon(Icons.shopping_cart), 
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child:Icon(Icons.search),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
             DrawerHeader(
               child: Container(
                 child: Center(
                   child: CircleAvatar(
                     backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbeZ61dM3bl1jEgwk2UbB2RpRlJw5Xnnii24KYRf7ncHCeB9c3&s",
                     ),
                    radius: 50.0,
                   ),
                 ),
               
               ),
              decoration: BoxDecoration(
                  image: DecorationImage(image:NetworkImage("https://www.pennington.com/-/media/Images/Pennington2-NA/US/blog/fertilizer/How-to-Have-a-Beautiful-Garden-in-Full-Sun/Colorful-flower-bed-og.jpg")),
              ),
             ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("096 678 888"),
                subtitle: Text("Smart"),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("bopha@gmail.com"),
                  subtitle: Text("Google Mail"),
              )
            ],
          ),
        ),
        body: ListView(
            children: <Widget>[
               Image.network("https://rukminim1.flixcart.com/image/352/352/poster/m/j/f/cute-new-born-baby-non-tearable-synthetic-sheet-poster-pb008-original-imae7qvrnsygcwg6.jpeg?q=70",
                    fit: BoxFit.cover,
                    width: 430.0,
                  ),
                weddingBox("https://2.bp.blogspot.com/-zUVxz7z0Ekc/XJC01P_97AI/AAAAAAAAXEw/lw2G8A694eEIMKXwmk7WUv_CMGPNf3oBQCLcBGAs/s1600/54799686_593406707801123_3550902518781313024_n.jpg",
                "https://2.bp.blogspot.com/-WnEcSt31Qxc/XV5xbwSAuAI/AAAAAAAAfqo/HWUufRDk5XI-fro9zm03Y6gfFjz5lzjYACLcBGAs/s1600/69210051_2394483724211043_2970753888514211840_n.jpg"),
                weddingBox("http://www.cambodiawikinews.com/wp-content/uploads/2018/09/8-7.jpg",
                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLHE2CvfW7K4MdVtJhutDZTu3_2cYLwDCYjqkp7zFKDpQxS_OB&s")
            ],
          ),
        ),
      
    );
  }
}