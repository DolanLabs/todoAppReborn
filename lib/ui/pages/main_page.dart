part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('go to second page'),
          onPressed: () {
            Navigator.pushNamed(context, secondPageRoute);
          },
        ),
      ),
    );
  }
}
