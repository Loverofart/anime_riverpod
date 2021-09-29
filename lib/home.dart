import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Finder'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: searchController,
                  decoration:
                      const InputDecoration(hintText: 'Enter Image URL'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Search'))
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Card(
                elevation: 2,
                child: Column(
                  children: const [
                    ListTile(
                      leading: Text('Title'),
                      title: Text('Attack onTitan'),
                    ),
                    ListTile(
                      leading: Text('Title'),
                      title: Text('Attack onTitan'),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
