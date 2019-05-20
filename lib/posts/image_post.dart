import 'package:flutter/material.dart';
import 'package:microgram/microgram.dart';
import 'package:microgram/widgets.dart';
import 'package:microgram/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:microgram/users/profile_page.dart';

class ImagePost extends StatelessWidget {

  final String postId, selfId;

  Post post;
  Profile profile;
  bool isLiked;

  Future<bool> future;

  ImagePost(this.postId, this.selfId) {
    this.future = getPostData();
  }

  Future<bool> getPostData() {
    return Microgram.getPost(postId).then((post) {
      this.post = post;
      return Microgram.getProfile(post.ownerId).then((profile) {
        this.profile = profile;
        return Microgram.isLiked(postId, selfId).then( (b) {
          this.isLiked = b;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return futureBuilder<bool>(future, (context, _) => _build(context));
  }

  @override
  Widget _build(BuildContext context) {
    return padding(
        column([
          buildPostHeader(context),
          row([expanded(buildLikeableImage())]),
          new ImagePostFooter(this),
        ]),
        EdgeInsets.all(5.0));
  }

  Widget buildPostHeader( BuildContext context ) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundImage: new CachedNetworkImageProvider(profile.photoUrl),
        backgroundColor: Colors.grey,
      ),
      title: new GestureDetector(
        child: text(profile.userId, TextBoldBlack),
        onTap: () => openProfile(context),
      ),
      subtitle: text(formatLocationAndDate(), TextNormalGray),
    );
  }

  String formatLocationAndDate() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(post.timestamp.toInt());
    return '${date.day}/${date.month}/${date.year} , ${post.location}';
  }

  void openProfile(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<bool>(builder: (BuildContext context) {
      return new ProfilePage(this.post.ownerId, this.selfId);
    }));
  }

  Widget buildLikeableImage() {
    return new GestureDetector(
      child: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new CachedNetworkImage(
            imageUrl: this.post.mediaUrl,
            fit: BoxFit.fitHeight,
            placeholder: progressIndicator(),
            errorWidget: new Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}

class ImagePostFooter extends StatefulWidget {
  final ImagePost parent;

  const ImagePostFooter(this.parent);
  _ImagePostFooter createState() => _ImagePostFooter(this.parent);
}

class _ImagePostFooter extends State<ImagePostFooter> {

  final ImagePost parent;

  int likes;
  bool isLiked;

  _ImagePostFooter(this.parent) {
    this.isLiked = parent.isLiked;
    this.likes = parent.post.likes;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white,
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              padding(buildLikeIcon(), EdgeInsets.only(left: 10.0, top : 4.0)),
              padding(text('${likes} likes', TextBoldBlack),
                  EdgeInsets.only(left: 10.0))
            ]));
  }

  GestureDetector buildLikeIcon() {
    return new GestureDetector(
        child: icon(isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart, 25.0, isLiked ? Colors.pink : Colors.black),
        onTap: () {
          setState(() {
            if( isLiked ) {
              isLiked = false;
              likes--;
            } else {
              isLiked = true;
              likes++;
            }
            Microgram.like(parent.postId, parent.selfId, isLiked);
          });
        });
  }
}