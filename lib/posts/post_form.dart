import 'package:flutter/material.dart';
import 'package:microgram/microgram.dart';
import 'image_file.dart';

class PostForm extends StatelessWidget {

  final Profile owner;
  final ImageFile image;
  final TextEditingController locationController;

  PostForm({this.owner, this.image, this.locationController});

  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new CircleAvatar(
              radius: 80,
              backgroundImage: new NetworkImage(owner.photoUrl),
            ),
            new Container(
              height: 160.0,
              width: 160.0,
              child: new AspectRatio(
                aspectRatio: 487 / 451,
                child: new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    fit: BoxFit.fill,
                    alignment: FractionalOffset.topCenter,
                    image: new FileImage(image.file),
                  )),
                ),
              ),
            ),
          ],
        ),
        new Divider(),
        new ListTile(
          leading: new Icon(Icons.pin_drop),
          title: new Container(
            width: 250.0,
            child: new TextField(
              controller: locationController,
              decoration: new InputDecoration(
                  hintText: "Where was this photo taken?",
                  border: InputBorder.none),
            ),
          ),
        )
      ],
    );
  }
}
