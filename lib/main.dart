import 'dart:html';

import 'package:flutter/material.dart'
import 'package:english_words/english_words.dart'
import 'package:provider/provider.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>MyAppState(),
      child: MaterialApp(
        title: '1-17 App',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blueGrey,
              child: Image(image: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAAeFBMVEXOESYAKGj////RECSvFzcAKWsAAFkAI2YAAFwAAFgADV4AFGAAFWAAJmcAF2EAHGMAIGWPl6+dpLkACF2EjahHV4Pg4uno6u83Snvz9Pfs7vIxRXgNLmwcNW9TYYm8wc7U1+B1f55kcJTKztipr8FDU4FteZkkO3LSAoxtAAAC2ElEQVR4nO3d63KiQBRFYT2ZQRQBES8xITcTk/d/wynj+GM8bUaF2m0l63uCrlVcmhbaXg8AAAAAAAAAAAAAAAAAAAAAADg3ONT7hUO93zjU6+MQTTyaeDTxaOLRxLuaJnmexx7CXvQm+aQYpckwax6abJiko2ISvU3cJnmRpo/V02JlO6vFU/VYp8Ug6qgiNsnLtKmezXuuHpIy4tESr8k4eQkF+ZvlJRlHG1msJkVdrY4W+TyNqrqINLY4TSbD2ZdBdmbDSZTRxWiS15vlCUnMlps6xmUlQpPBcHpSka3pMMItSN+kbBYnJzFbNKV8hPIm2eaMIlubTD1EdZPR+swkZuuReIziJqP3s5OYvYujaJtk5x8ln0eK9vSRNinnFyUxm0svtMomg+bCJGaN8pYsbJInp83UQpaJcPImbJK+XZzE7C3VDVTXZHLpxWRnrnv2kTXJk7tWTe50Z4+sybhqlcSski2oqJrk45ZJzDLVgaJqkp3+LHzMVDVzUzVJWicxS0RjFTUpTllX+5+ZaDFS1CQ5Z83kmIXoQNE0Gdx3kMTsXjPD1zQZt7/Cbk01t2NNk05OHdnJI2mSTzpJYqb5LVnSpFx31GQtWUeRNOlgwrajmbZJmtSvHTV5rRXDlTRJL19M+tdSsooiadLFxH5HcuORNGn/TLz3ba4ng4/OmnwoZrKSJredNbmlCU1+VBOuJx73HY/5icc81uN5x+O52GP9xGOdLYD1WI91e4/fdwL4HdDj9+KALqb3qlfaeP/Ek72nlLVu8u3eU+J9tgDeewzg/dgA3qP2eN8+gO8yAvh+J4DvvAL4HjCA70YD+L44oOyf9R16/wd8h85+BUHsaxHC/ich7JMTwn5KAV/tu5X+zH23toL7syVpEXfbOvbx86I32WO/x6tGE48mHk08mng08fgfBI//y/D4XxUv9l/dAAAAAAAAAAAAAAAAAAAAAABwjf4AAFmjxe4eKr4AAAAASUVORK5CYII=')),
            ),
          );
        },
      ),
    );
  }
}