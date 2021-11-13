
import 'package:flutter/material.dart';
import 'package:flutter_ex1/models/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 20, backgroundImage: NetworkImage(
          user.backgroundImage,
        ),
        ),
        title: Text(
          user.name, style: TextStyle(
          fontWeight:  FontWeight.bold,
          fontSize: 16,
        ),
        ),
        subtitle: Text(user.intro,style: TextStyle(fontSize: 12),),
      )
    );
  }
}
