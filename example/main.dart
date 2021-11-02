import 'package:flutter/material.dart';
import 'package:flutter_tree/flutter_tree.dart';

import 'tree_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tree example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Tree')),
        body: TreeView(
          data: treeData,
          titleOnTap: (String title) {
            debugPrint('title => $title');
          },
          leadingOnTap: (String title) {
            debugPrint('leading => $title');
          },
          trailingOnTap: (String title) {
            debugPrint('trailing => $title');
          },
        ),

        // body: TreeNode(
        //   title: Text('This is a title!'),
        //   children: [
        //     TreeNode(
        //       title: Text('This is a title!'),
        //       children: <Widget>[
        //         TreeNode(title: Text('This is a title!')),
        //         TreeNode(
        //           title: Text('This is a title!'),
        //           children: <Widget>[
        //             TreeNode(title: Text('This is a title!')),
        //             TreeNode(title: Text('This is a title!')),
        //             TreeNode(title: Text('This is a title!')),
        //           ],
        //         ),
        //         TreeNode(title: Text('This is a title!')),
        //         TreeNode(title: Text('This is a title!')),
        //         TreeNode(
        //           title: Text('This is a title!'),
        //           children: <Widget>[
        //             TreeNode(title: Text('This is a title!')),
        //             TreeNode(title: Text('This is a title!')),
        //             TreeNode(title: Text('This is a title!')),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
