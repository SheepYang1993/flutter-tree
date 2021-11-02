import 'package:flutter/material.dart';
import 'package:flutter_tree/flutter_tree.dart';

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
        body: SingleChildScrollView(
          child: TreeView(
            data: [
              TreeNodeBean(
                name: "国家总局",
                showCheckBox: true,
                children: [
                  TreeNodeBean(
                    name: "云南省局",
                    showCheckBox: true,
                    children: [
                      TreeNodeBean(
                        name: "昆明市局",
                        showCheckBox: true,
                      ),
                      TreeNodeBean(
                        name: "玉溪市局",
                        showCheckBox: true,
                      ),
                      TreeNodeBean(
                        name: "张三",
                        showCheckBox: true,
                      ),
                      TreeNodeBean(
                        name: "李四",
                        showCheckBox: true,
                      ),
                    ],
                  ),
                  TreeNodeBean(
                    name: "福建省局",
                    showCheckBox: true,
                    children: [
                      TreeNodeBean(
                        name: "泉州市局",
                        showCheckBox: true,
                        children: [
                          TreeNodeBean(
                            name: "鲤城区局",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "丰泽区局",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "洛江区局",
                            showCheckBox: true,
                          ),
                        ],
                      ),
                      TreeNodeBean(
                        name: "福州市局",
                        showCheckBox: true,
                      ),
                      TreeNodeBean(
                        name: "厦门市局",
                        showCheckBox: true,
                        children: [
                          TreeNodeBean(
                            name: "思明区局",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "湖里区局",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "同安区局",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "张三",
                            showCheckBox: true,
                          ),
                          TreeNodeBean(
                            name: "李四",
                            showCheckBox: true,
                          ),
                        ],
                      ),
                      TreeNodeBean(
                        name: "张三",
                        showCheckBox: true,
                      ),
                      TreeNodeBean(
                        name: "李四",
                        showCheckBox: true,
                      ),
                    ],
                  ),
                ],
              )
            ],
            titleOnTap: (TreeNodeBean? nodeInfo) {
              debugPrint('title => $nodeInfo');
            },
            leadingOnTap: (TreeNodeBean? nodeInfo) {
              debugPrint('leading => $nodeInfo');
            },
            trailingOnTap: (TreeNodeBean? nodeInfo) {
              debugPrint('trailing => $nodeInfo');
            },
          ),
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
