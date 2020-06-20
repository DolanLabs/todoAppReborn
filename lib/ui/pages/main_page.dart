part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _dummyTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: TextField(
                  controller: _dummyTextController,
                  decoration: InputDecoration(hintText: 'Input string here'),
                ),
              ),
            ),
            RaisedButton(
              child: Text('go to second page'),
              onPressed: () {
                Navigator.pushNamed(context, secondPageRoute,
                    arguments: _dummyTextController.text ?? '');
              },
            ),
          ],
        ),
      ),
    );
  }
}
