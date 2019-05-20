import 'dart:io';
import 'package:image/image.dart' as IMG;

class ImageFile {
  static const int IMG_SIZE = 256;

  File file;
  List<int> data;

  ImageFile ( File file ) {
    this.file = file;
    this.data = file.readAsBytesSync();
  }

  Future<List<int>> compressImage() async {
    var image = IMG.decodeImage(data);
    IMG.copyResize(image, IMG_SIZE);
    return IMG.encodeJpg(image, quality: 85);
  }
}
