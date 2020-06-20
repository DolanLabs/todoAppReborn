part of 'pages.dart';

class SecondPage extends StatelessWidget {
  final String text;
  const SecondPage(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
