import "package:flutter/material.dart";
import 'dart:async';
import 'package:microgram/microgram.dart';
import 'package:microgram/styles.dart';
import 'package:microgram/widgets.dart';
import 'profile.dart';
import 'package:microgram/posts/image_post.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class ProfilePage extends StatelessWidget {

  final String selfId, profileId ;

  ProfilePage(this.profileId, this.selfId);

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: buildAppBar(),
        body: padding(column([
          new UserProfile(profileId, selfId, compact: false),
          new Divider(),
          buildUserPosts()
        ]), EdgeInsets.all(5.0))
    );
  }

  AppBar buildAppBar() {
    if( selfId == profileId )
      return new AppBar(
        leading: icon( Icons.person, 30.0),
        title: text(profileId, TextBoldBlack),
        backgroundColor: Colors.white,
      );
    else
      return new AppBar(
        title: text(profileId, TextBoldBlack),
        backgroundColor: Colors.white,
      );
  }

  Widget buildUserPosts() {
    return futureBuilder<List<String>>( Microgram.getUserPosts(profileId), (_, posts) {
      return expanded(listView(
            posts.map( (p) => new ImagePost( p, selfId )).toList()
        ));
    });
  }
}
