import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:microgram/widgets.dart';
import 'package:microgram/styles.dart';
import 'package:microgram/location.dart';
import 'package:microgram/microgram.dart';
import 'post_form.dart';
import 'image_file.dart';

class UploadPage extends StatefulWidget {
  final Profile profile;

  final UserLocation location = new UserLocation();

  UploadPage( {this.profile} );

  _Uploader createState() => new _Uploader( profile, location );
}

class _Uploader extends State<UploadPage> {
  Profile owner;
  UserLocation location;
  ImageFile image = null;
  String imageLocation = null;

  final TextEditingController locationSelector = new TextEditingController();

  _Uploader( Profile owner, UserLocation location ) {
    this.owner = owner;
    this.location = location;
    locationSelector.addListener(() {
      imageLocation = locationSelector.text;
    });
  }

  Widget build(BuildContext context) {
    return image == null ? new IconButton(iconSize:64, icon: new Icon(Icons.file_upload), onPressed: _selectImage) : new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          backgroundColor: Colors.white70,
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: null ),

          title: text("Post ...", TextBoldBlack),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.arrow_forward, color: Colors.black, size: 30.0,),
                onPressed: _postImage ),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new PostForm(
              owner: owner,
              image: image,
              locationController: locationSelector,
            ),
            new Divider(), //scroll view where we will show location to users
            (location.address == null)
                ? Container()
                : new Wrap(
              runAlignment: WrapAlignment.end,
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 4.0,
                children: locationsFromAddress(),
              ),
            (location.address == null) ? Container() : Divider(),
          ],
        ));

  }

  _selectImage() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: const Text('Create a Post'),
          children: <Widget>[
            imagePickerDialog("Take a photo...", ImageSource.camera),
            imagePickerDialog("Choose from Gallery...", ImageSource.gallery),
            new SimpleDialogOption(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  _postImage() {
    print('posting...');
    var loc = imageLocation == null ? "Earth" : imageLocation;
    Microgram.createPost( owner, image.data, loc ).then( (postId) {
      print(postId);
      clearImage();
    });
  }

  Widget imagePickerDialog( String text, ImageSource src ) {
    return new SimpleDialogOption(
        child: Text(text),
        onPressed: () {
          Navigator.of(context).pop();
          ImagePicker.pickImage(source: src).then( (f) {
            setState(() {
              if( f != null )
                  image = new ImageFile( f );
            });
          });
        });
  }

  List<Widget> locationsFromAddress() {
    var address = location.address;
    return (address == null ? []: [address.addressLine, address.subLocality, address.locality, address.adminArea, address.countryName])
        .toSet()
        .map( (loc) => buildLocationButton(loc) as Widget)
        .toList();
  }

  void clearImage() {
    setState(() {
      image = null;
      imageLocation = null;
    });
  }

//method to build buttons with location.
  buildLocationButton(String locationName) {
    if (locationName != null ?? locationName.isNotEmpty) {
      return InkWell(
        onTap: () {
          locationSelector.text = locationName;
        },
          child: new Container(
            height: 30.0,
            decoration: new BoxDecoration(
              color: Colors.grey[300],
              borderRadius: new BorderRadius.circular(5.0),
            ),
            child: new Center(
              child: text( locationName, TextBoldBlack),
            ),
        ),
      );
    } else {
      return Container();
    }
  }

}