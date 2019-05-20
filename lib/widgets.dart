import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import 'styles.dart';
import 'package:validators/validators.dart';

Widget text(label, TextStyle style) {
  return new Text(label.toString(), style: style);
}

Widget column(List<Widget> children) {
  return new Column(
    children: children,
  );
}

Widget row(List<Widget> children, [MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start]) {
  return new Row(
    mainAxisAlignment: mainAxisAlignment,
    children: children,
  );
}

Widget padding(Widget child, EdgeInsetsGeometry padding) {
  return new Padding(
    padding: padding,
    child: child,
  );
}

Center center(Widget child) {
  return new Center(
    child: child,
  );
}

Expanded expanded(Widget child) {
  return new Expanded(
    child: child,
  );
}

Widget progressIndicator() {
  return new Container(
      alignment: FractionalOffset.center,
      child: new CircularProgressIndicator());
}

Widget container(Widget child) {
  return new Container(
    child: child,
  );
}

Widget listView(List<Widget> children) {
  return new ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      children: children);
}

Widget textColumn(List<Map<Object, TextStyle>> items) {
  return padding(column(
      items.expand( (e) => e.entries ).map( (e) => text( e.key.toString(), e.value)).toList()
  ), EdgeInsets.all(5.0)
  );
}

Icon icon( IconData icon, double size, [Color color = Colors.black]) {
  return Icon( icon, size: size, color: color);
}

typedef Widget CustomBuilder<T>(BuildContext ctx, T data);

Widget futureBuilder<T>(Future<T> future, CustomBuilder<T> build) {
  return FutureBuilder<T>(
    future: future, //
    builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.none:
          return new Container();
        case ConnectionState.active:
        case ConnectionState.waiting:
          return progressIndicator();
        case ConnectionState.done:
          if (snapshot.hasError)
            return Text('Error: ${snapshot.error}');
          return build(context, snapshot.data);
      }
    },
  );
}

TextFormField ipInput( ValueChanged<String> onValidIp ) {
  return new TextFormField(
    decoration: InputDecoration(labelText: 'IP do Proxy ?'),
    style: TextBoldBlue20,
    keyboardType: TextInputType.url,
    autovalidate: true,
    autocorrect: false,
    onFieldSubmitted: (ip) => onValidIp(ip),
    validator: (s) => isIP(s) ? ' ' : 'not a valid ip');
  }