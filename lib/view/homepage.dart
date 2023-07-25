import 'package:book_app/models/books.dart';
import 'package:book_app/view/routepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Hi John,'),
        actions: [
          Icon(CupertinoIcons.search),
          SizedBox(
            width: 10,
          ),
          Icon(CupertinoIcons.bell),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.cyanAccent,
              child: Stack(
                children: [
                  Image.asset(
                    'pics/s3.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 90,
                    left: 35,
                    child: Text(
                      'NOW\nREAD THE BOOKS\nOF YOUR CHOICE FOR\nFREE !',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 165, left: 80),
                    child: Text(
                        'A reader lives thousand lives before he dies.\n                                            - George RR Martin',
                        style: TextStyle()),
                  )
                ],
              )),
          Card(
              child: Text('Popular Now',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900))),
          SizedBox(
            height: 5,
          ),
          Container(
              width: double.infinity,
              height: 200,
              //color: Colors.grey[50],
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: book.length,
                  itemBuilder: (context, index) {
                    final buk =
                        book[index]; //itembuilder ko index ho yo yaha haleko

                    return Container(
                        color: Colors.black12,
                        width: 300,
                        height: 200,
                        margin: EdgeInsets.only(left: 0, right: 0),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Card(
                                child: Container(
                                  width: 300,
                                  height: 150,
                                  //color: Colors.green,
                                  //margin: EdgeInsets.only(top: 30),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            //color: Colors.yellow,
                                            ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  buk.label,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  buk.description,
                                                  maxLines: 5,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child:
                                                            Text(buk.rating)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                        child: Text(
                                                      buk.genre,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(buk.image),
                                )) //book[0].image
                          ],
                        ));
                  })),
          Card(
              child: Text('You may also like',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900))),
          SizedBox(height: 5),
          Expanded(
            child: Container(
                width: double.infinity,
                height: 150,
                //color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: book.length,
                    itemBuilder: (context, index) {
                      final buk = book[index];
                      return Card(
                        child: InkWell(
                          onTap: () {
                            //print(buk.label);
                            Get.to(() => RoutePage(buk),
                                transition: Transition.leftToRightWithFade);
                            /*
                        The RoutePage(buk) part creates an instance of the RoutePage class and 
                        passes a parameter named buk. This implies that buk is an object or 
                        a value needed by the RoutePage class for initialization or some other
                         purpose.
                        */
                          },
                          child: Container(
                            //color: Colors.grey[100],
                            color: Colors.black12,

                            // color: Colors.grey[100],
                            width: 100,
                            height: 20,
                            margin: EdgeInsets.only(right: 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                  buk.image,
                                  height: 90,
                                ),
                                Text(
                                  buk.label,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),
                                ),
                                Text(
                                  buk.genre,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ),
          Container(
              height: 220,
              child: Image.asset(
                'pics/bg5.jpg',
                // height: 200,
                // width: 300,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
