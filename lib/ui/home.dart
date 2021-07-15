import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            _buildAppBar(),
            _buildHeading(),
            _buildSearchBox(),
            _buildCategoryList(),
            _buildTopTrips()
          ],
        ),
      ),


    );
  }

  //Appbar
  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/menubutton.svg',
            height: 20,
            width: 10,
          ),
          Spacer(),
          Row(
            children: [
              Icon(
                Icons.location_searching,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Dhaka, Bangladesh',
                style: GoogleFonts.roboto(
                  color: Colors.grey[400],
                ),
              )
            ],
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
            ),
          )
        ],
      ),
    );
  }

  //Heading
  _buildHeading() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi John,',
            style: GoogleFonts.roboto(fontSize: 30),
          ),
          Text(
            'Where do you',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Text(
            'Wanna go?',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 35),
          )
        ],
      ),
    );
  }

  //SearhB0x
  _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade400)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
              hintText: 'Where do you want to go?',
              hintStyle: GoogleFonts.roboto(color: Colors.grey, height: 16)),
        ),
      ),
    );
  }

//CategoryList
  _buildCategoryList() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(
                              20,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.airplanemode_active_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Trips',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                              20,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Hotels',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                              20,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wallpaper_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Mountains',
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//TopTrips
  _buildTopTrips() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Trips',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) =>DetailPage()));
                      },
                      child: Hero(
                        tag: 'here',
                        child: Container(
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  20,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                          'https://images.unsplash.com/photo-1626198275813-836d6fc3f5c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',width: 300,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('The Beach',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 16),),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.red,
                                                  size: 12,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Bali, Indonesia',
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: Colors.grey[400],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Expanded(child: Row(
                                          children: [
                                            Icon(Icons.star,color: Theme.of(context).buttonColor,size: 14,),
                                            Text(
                                              '4.8',
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1626264146558-56486fabb5a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=968&q=80  ',width: 300,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Nusa Pedina',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 16),),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.red,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Dhaka, Bangladesh',
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Expanded(child: Row(
                                      children: [
                                        Icon(Icons.star,color: Theme.of(context).buttonColor,size: 14,),
                                        Text(
                                          '4.8',
                                          style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            color: Colors.grey[400],
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
