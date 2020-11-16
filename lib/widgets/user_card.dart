import 'package:flutter/material.dart';
import 'package:lifeline_integrated/models/models.dart';
import 'package:lifeline_integrated/widgets/profile_avatar.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key key, this.user
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ProfileAvatar(imageUrl: user.imageUrl),
        const SizedBox(width: 6.0),
        Text(user.name,),
      ],
    );
  }
}
