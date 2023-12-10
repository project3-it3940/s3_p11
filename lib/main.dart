import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  TextEditingController editingController = TextEditingController();
  int selectedValue = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      const Text("TextField"),
                      TextField(
                        controller: editingController,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      const Text("Radio Buttons"),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: RadioListTile<int>(
                              title: const Text("Option 1"),
                              contentPadding: const EdgeInsets.all(0),
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile<int>(
                              title: const Text("Option 2"),
                              contentPadding: const EdgeInsets.all(0),
                              value: 2,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      const Text("Radio Buttons"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                title: const Text("Option 1"),
                                contentPadding: const EdgeInsets.all(0),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: true,
                                onChanged: (value) {},
                              )),
                          Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                title: const Text("Option 2"),
                                contentPadding: const EdgeInsets.all(0),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: true,
                                onChanged: (value) {},
                              )),
                          Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                title: const Text("Option 3"),
                                contentPadding: const EdgeInsets.all(0),
                                dense: true,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: true,
                                onChanged: (value) {},
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
