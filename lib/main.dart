import 'package:flutter/material.dart';

void main() {
  runApp(new FriendlychatApp());
}

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
State createState() => new ChatScreenState(); 
}
class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController(); //new
  Widget _buildTextComposer() {
  return new Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(                                            //new
      children: <Widget>[                                      //new
        new Flexible( 
    child: new TextField(
      controller: _textController,
      onSubmitted: _handleSubmitted,
      decoration: new InputDecoration.collapsed(
        hintText: "Send a message"),
                  ),
        ),
                new Container(                                                 //new
          margin: new EdgeInsets.symmetric(horizontal: 4.0),           //new
          child: new IconButton(                                       //new
            icon: new Icon(Icons.send),                                //new
            onPressed: () => _handleSubmitted(_textController.text)),  //new
        ),                                                       //new
      ], 
    ),
  );
}            
void _handleSubmitted(String text) {
  _textController.clear();
}      //new
  @override                                                        //new
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(title: new Text("Friendlychat")),
      body: _buildTextComposer(), //new

    );
  }
}