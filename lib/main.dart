import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:microgram/users/profile_page.dart';
import 'package:microgram/posts/upload_page.dart';
import 'users/search_page.dart';
import 'posts/feed.dart';
import 'microgram.dart';
import 'widgets.dart';
import 'styles.dart';

void main(List args) async {
  Microgram.init(Uri.parse('http://192.168.1.245:8998/'));
  runApp(MicrogramApp());
}

class MicrogramApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: MICROGRAM,
      theme: new ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue[50],
          primarySwatch: Colors.blue,
          buttonColor: Colors.red,
          primaryIconTheme: new IconThemeData(color: Colors.black)),
      home: new ProxyPage(),
    );
  }
}

class ProxyPage extends StatefulWidget {

  ProxyPage();

  _ProxyPage createState() => new _ProxyPage();
}

class _ProxyPage extends State<ProxyPage> {

  _ProxyPage() {
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: new Column(
            children: <Widget>[
              text(MICROGRAM, BillabongBlack60),
              new Padding(padding: const EdgeInsets.only(bottom: 100.0)),
              new Container( margin: EdgeInsets.symmetric(horizontal: 8),
                  child: ipInput( (ip) =>onValidIpAddress(ip)))
            ],
          ),
        ),
      ),
    );
  }

  void onValidIpAddress( String ip ) {
    Uri proxyUri = Uri.parse('tcp://${ip}:${Microgram.PORT}');
    Microgram.init( proxyUri );

    Microgram.searchProfiles("_").then((p) {
      Navigator.of(context).push(new MaterialPageRoute<bool>(builder: (BuildContext context) {
        return new SignInPage();
      }));

    }).catchError( (e) {
      print(e);
    });
  }
}

class SignInPage extends StatelessWidget {

  final googleSignIn = new GoogleSignIn();

  GoogleSignInAccount userAccount;

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Padding(
          padding: const EdgeInsets.only(top: 240.0),
          child: new Column(
            children: <Widget>[
              text(MICROGRAM, BillabongBlack60),
              new Padding(padding: const EdgeInsets.only(bottom: 100.0)),
              new GestureDetector(
                onTap: () => login(context),
                child: new Image.asset(
                  "assets/images/google_signin_button.png",
                  width: 225.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login( BuildContext context ) async {
    var userAccount = googleSignIn.currentUser;

    if (userAccount == null) {
      userAccount = await googleSignIn.signInSilently();
    }

    if (userAccount == null) {
      userAccount = await googleSignIn.signIn().catchError((e){
        print('Sign in failed...' + e.toString());
      });
    }

    var email = userAccount.email;
    var myId = email.split(new RegExp('@')).first.replaceAll(new RegExp('\\.'), '');
    print("signed in as: ${userAccount}");
    Profile myProfile = new Profile()..userId = myId
      ..fullName = userAccount.displayName
      ..photoUrl = userAccount.photoUrl;

    await Microgram.getOrCreateProfile(myProfile).then( (_) {
      Navigator.of(context).push(new MaterialPageRoute<bool>(builder: (BuildContext context) {
        return new HomePage(myId, myProfile);
      }));
    });
  }
}

class HomePage extends StatefulWidget {

  final String myId;
  final Profile myProfile;

  const HomePage(this.myId, this.myProfile, {Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState(this);
}

PageController pageController;

class _HomePageState extends State<HomePage> {

  final HomePage parent;
  _HomePageState(this.parent);

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    
     return new Scaffold(
      body: new PageView(
        children: [
          pageContainer( new FeedPage(parent.myId) ),
          pageContainer( new SearchPage(parent.myId) ),
          pageContainer( new UploadPage( profile: parent.myProfile ) ),
          pageContainer( new ProfilePage(parent.myId, parent.myId))
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new CupertinoTabBar(
        activeColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          bottomNavigationBarItem( Icons.home, 0),
          bottomNavigationBarItem( Icons.search, 1),
          bottomNavigationBarItem( Icons.add_circle, 2),
          bottomNavigationBarItem( Icons.person, 4),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );

  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }


  Widget pageContainer( Widget page ) {
    return new Container(
      color: Colors.white,
      child: page);
  }

  BottomNavigationBarItem bottomNavigationBarItem( IconData icon, int index ) {
    return new BottomNavigationBarItem(
        icon: new Icon(icon, color: (_page == index) ? Colors.black : Colors.grey),
        title: new Container(height: 0.0),
        backgroundColor: Colors.white);
  }
}

