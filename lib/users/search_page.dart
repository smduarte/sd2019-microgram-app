import 'dart:async';
import 'package:flutter/material.dart';
import 'package:microgram/microgram.dart';
import 'package:microgram/widgets.dart';
import 'profile_page.dart';
import 'profile.dart';

class SearchPage extends StatefulWidget {
  final String selfId;

  const SearchPage(this.selfId);
  _SearchPage createState() => new _SearchPage(this);
}

class _SearchPage extends State<SearchPage> {

  final SearchPage parent;

  _SearchPage(this.parent);

  Future<List<Profile>> query;

  Widget buildSearchField() {
    return new AppBar(
      leading: icon( Icons.search, 30.0),
      backgroundColor: Colors.white,
      title: new Form(
        child: new TextFormField(
          decoration: new InputDecoration(labelText: 'Search for a user...'),
          onFieldSubmitted: submit,
        ),
      ),
    );
  }

  void submit(String searchValue) async {
    setState(() {
      query = Microgram.searchProfiles( searchValue );
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: buildSearchField(),
        body: padding(
          column( [
            expanded(futureBuilder<List<Profile>>(query, (context, hits) => _build(context, hits)))
          ])
        , EdgeInsets.all(5.0))
    );
  }

  Widget _build( BuildContext _, List<Profile> hits) {
    return listView(
        hits.where((h) => parent.selfId != h.userId)
            .map( (p) => new UserSearchItem(p.userId, parent.selfId))
            .toList()
    );
  }
}

class UserSearchItem extends StatelessWidget {

  final String selfId, profileId;

  const UserSearchItem(this.profileId, this.selfId);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        child: new UserProfile(profileId, selfId, compact: true),
        onTap: () {
          openProfile(context);
        });
  }

  void openProfile(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<bool>(builder: (BuildContext context) {
      return new ProfilePage(profileId, this.selfId);
    }));
  }

}
