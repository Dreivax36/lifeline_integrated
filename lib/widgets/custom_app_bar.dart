import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{

  @override
  Widget build(BuildContext context)
  {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 23.0),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                 padding: const EdgeInsets.fromLTRB(0.0, 13.0, 0.0, 0.0),
                 child: Container(
                  //width: screenWidth * .45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_pin,
                            size: 20,
                            color: Colors.red,
                          ),
                          Text(
                            'Naga City',
                          ),
                        ],
                      ),
                    ),
              ),
               ),
            ],
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             IconButton(
               icon: Icon(
                   Icons.notifications
               ),
               onPressed: () {},
               tooltip: 'Share',
               iconSize: 22.0,
               color: Colors.black,
             ),
           ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

