import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/models/models.dart';
import 'package:lifeline_integrated/widgets/TopBar.dart';
import 'package:lifeline_integrated/widgets/bottom_nav_bar.dart';
import 'package:lifeline_integrated/widgets/screen_size.dart';
import 'package:lifeline_integrated/widgets/user_card.dart';


class TopNavBar extends StatefulWidget {
  final User currentUser;
  final int selectedIndex;
  final Function(int) onTap;
  final Map<String, IconData> icontext;

  const TopNavBar({
    Key key,
    @required this.currentUser,
    @required this.selectedIndex,
    @required this.onTap,
    @required this.icontext,
  }) : super(key: key);

  @override
  _TopNavBarState createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Text(
                  'LIFELINE',
                  style: const TextStyle(
                    fontFamily: 'Barbara',
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Palette.bluetheme,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 300.0,
                child: ScreenSize.isDesktop(context) ? TopBar(
                  icontext: widget.icontext,
                  selectedIndex: widget.selectedIndex,
                  onTap: widget.onTap,
                  isBottomIndicator: true,
                ) : BottomNavBar(
                  icontext: widget.icontext,
                  selectedIndex: widget.selectedIndex,
                  onTap: widget.onTap,
                  isBottomIndicator: true,
                ),
              ),
            ],
          ),
          SizedBox(width: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              UserCard(user: widget.currentUser),
              const SizedBox(width: 10.0,),
              Icon(
                Icons.arrow_drop_down_sharp,
                size: 30.0,
              ),
            ],
          ),
        ],
      )
    );
  }
}



