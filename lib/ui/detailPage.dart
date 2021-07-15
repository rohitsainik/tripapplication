import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var wiki =
      "Nusa Penida is an island southeast of Indonesia's island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan and twelve even smaller islands. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali. It is one of the major tourist attractions among the three Nusa islands and is rich in natural beauty.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [_buildHeading(), _buildTopic(), _buildButton(),  _buildDescription()],
      ),
      bottomNavigationBar: _buildBottom(),
    );
  }

  //HeadingImge

  _buildHeading() {
    return Stack(
      children: [
        Hero(
          tag: 'here',
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1626198275813-836d6fc3f5c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              color: Colors.redAccent,
            ),
          ),
        ),
        Positioned(
          top: 10,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        )
      ],
    );
  }

//topic
  _buildTopic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Beach',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff29354e)),
              ),
              CircleAvatar(
                  backgroundColor: Color(0xffe6a89a),
                  radius: 16,
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).buttonColor,
                  ))
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.red,
                size: 14,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Bali, Indonesia',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

//CenterButton
  _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.star_border,
                  color: Colors.black,
                ),
              ),
              Text(
                'Rating',
                style: GoogleFonts.roboto(color: Colors.grey.shade400),
              ),
              Text(
                '4.8 (3.2 k)',
                style: GoogleFonts.roboto(color: Colors.black),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.tram_rounded,
                  color: Colors.black,
                ),
              ),
              Text(
                'Distance',
                style: GoogleFonts.roboto(color: Colors.grey.shade400),
              ),
              Text(
                '300 km',
                style: GoogleFonts.roboto(color: Colors.black),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.dinner_dining,
                  color: Colors.black,
                ),
              ),
              Text(
                'Restaurants',
                style: GoogleFonts.roboto(color: Colors.grey.shade400),
              ),
              Text(
                '108 avail.',
                style: GoogleFonts.roboto(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //Description
  _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(wiki,style: GoogleFonts.roboto(color: Colors.grey,fontSize: 16),textAlign: TextAlign.justify,),
    );
  }

  //Bottombar
  _buildBottom(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text('Book A Trip',style: GoogleFonts.roboto(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
      ),
    );

  }
}
