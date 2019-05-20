import "package:flutter/material.dart";
import 'package:microgram/microgram.dart';
import 'package:microgram/styles.dart';
import 'package:microgram/widgets.dart';


class UserProfile extends StatelessWidget {

  final String selfId, profileId;
  final bool compact;

  UserProfile( this.profileId, this.selfId, {this.compact = false} );

  Future<Profile> getProfile() => Microgram.getProfile( profileId );

  Widget build( BuildContext context ) {
    return futureBuilder<Profile>(getProfile(), (_, profile) {
      return compact ? smallSized( profile ) : normalSized( profile );
    });
  }


  Widget normalSized(Profile profile) {
    return column([
      row([userAvatar(profile, 45.0), expanded(userStats())]),
      new Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(top: 15.0),
          child: text(profile.fullName, TextBoldBlack)
      )]);
  }

  Widget smallSized( Profile profile ) {
    return column([
      row([
        userAvatar(profile, 30.0),
        textColumn([{profile.userId : TextBoldBlack }, {profile.fullName : TextNormalGray12}, ]),
        expanded(userStats())])
    ]);
  }

  Widget userAvatar(Profile profile, double size) {
    return column([
      new CircleAvatar(
        radius: size,
        backgroundImage: new NetworkImage(profile.photoUrl),
      )
    ]);
  }

  UserProfileStats userStats() => new UserProfileStats(this);
}


class UserProfileStats extends StatefulWidget {
  final UserProfile parent;

  const UserProfileStats( this.parent);
  _UserProfileStats createState() => new _UserProfileStats(this.parent);
}

class _UserProfileStats extends State<UserProfileStats> {

  final UserProfile parent;

  _UserProfileStats(this.parent);

  bool isFollowing;
  Profile profile;

  Future<void> getProfileData() {
    return Microgram.getProfile(parent.profileId).then( (profile) {
        this.profile = profile;
        if( isFollowing == null )
          return Microgram.isFollowing(parent.selfId, parent.profileId).then((isFollowing) {
            this.isFollowing = isFollowing;
          });
    });
  }

  Widget build( BuildContext context ) {
    return futureBuilder<void>( getProfileData(), (_,__) {
        return userStats();
    });
  }

  Widget userStats() {
    var style1 = TextBoldBlack16, style2 = TextBoldGray15;
    var showFollow = ! parent.compact && parent.selfId != profile.userId;
    return column([
      row([
        textColumn([{profile.posts : style1 }, {'posts' : style2}, ]),
        textColumn([{profile.followers : style1 }, {'followers' : style2}, ]),
        textColumn([{profile.following : style1 }, {'following' : style2}, ]),
      ], MainAxisAlignment.spaceAround)
      , showFollow ? buildFollowButton() : new Container()
    ]);
  }

  void click() {
    Microgram.follow(parent.selfId, profile.userId, ! isFollowing);
    setState(() {
      this.isFollowing = ! isFollowing;
    });
  }

  Container buildFollowButton() {
    return new Container(
      padding: const EdgeInsets.only(top: 2.0),
      child: new FlatButton(
          onPressed: () => click(),
          child: new Container(
            decoration: new BoxDecoration(
                color: isFollowing ? Colors.white : Colors.lightBlue,
                border: new Border.all(color: Colors.black),
                borderRadius: new BorderRadius.circular(5.0)),
            alignment: Alignment.center,
            child: new Text(isFollowing?"Unfollow":"Follow", style: new TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            width: 250.0,
            height: 27.0,
          )),
    );
  }

}