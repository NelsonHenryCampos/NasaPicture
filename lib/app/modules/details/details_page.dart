import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final String img;
  final String date;
  final String title;
  final String explanation;
  final int index;
  const DetailsPage({
    Key key,
    this.img,
    this.date,
    this.title,
    this.explanation,
    this.index,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
         
          children: <Widget>[
            Hero(
              tag: 'image${widget.index}',
              child: CachedNetworkImage(
                imageUrl: widget.img,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Details",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Title: ${widget.title}",
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Date: ${widget.date}",
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.centerLeft,
                  child: ExpandablePanel(
                    theme: ExpandableThemeData(iconColor: Colors.white),
                    header: Text(
                      "Explanation",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    expanded: Text(
                      widget.explanation,
                      softWrap: true,
                      maxLines: 1,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    collapsed: Text(
                      widget.explanation,
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
