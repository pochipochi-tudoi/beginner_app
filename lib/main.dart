import 'package:flutter/material.dart';
import 'package:words_list/data.dart';
import 'package:words_list/dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '単語帳'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: wordList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(wordList[index].english),
                onTap: () {
                  showDialog<void>(
                    context: context,
                    builder: (_) {
                      return ShowWordDialog(japanese: wordList[index].japanese);
                    },
                  );
                },
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
