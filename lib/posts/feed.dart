import "package:flutter/material.dart";
import 'package:microgram/microgram.dart';
import 'package:microgram/styles.dart';
import 'package:microgram/widgets.dart';
import 'image_post.dart';

class FeedPage extends StatelessWidget {

  final String selfId;

  FeedPage(this.selfId);

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: buildAppBar(),
        body: padding(column([
          new Divider(),
          buildFeedPosts()
        ]), EdgeInsets.all(5.0))
    );
  }

  AppBar buildAppBar() {
    return new AppBar(
        leading: new Container(),
        title: text(MICROGRAM, BillabongBlack40),
        centerTitle: true,
        backgroundColor: Colors.white,
    );
  }

  Widget buildFeedPosts() {
    print(selfId);
    return futureBuilder<List<String>>( Microgram.getFeedPosts(selfId), (_, posts) {
      return expanded(listView(
          posts.map( (p) => new ImagePost( p, selfId )).toList()
      ));
    });
  }
}
