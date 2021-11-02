import 'package:flutter/material.dart';
import 'package:flutter_tree/src/tree_node_bean.dart';

import 'tree_node.dart';

class TreeView extends StatelessWidget {
  final List<TreeNodeBean> data;

  final double offsetLeft;

  final Function(TreeNodeBean? nodeInfo)? titleOnTap;
  final Function(TreeNodeBean? nodeInfo)? leadingOnTap;
  final Function(TreeNodeBean? nodeInfo)? trailingOnTap;

  const TreeView({
    required this.data,
    this.offsetLeft = 24.0,
    this.titleOnTap,
    this.leadingOnTap,
    this.trailingOnTap,
  });

  List<TreeNode> _geneTreeNodes(List<TreeNodeBean> list) {
    List treeNodes = <TreeNode>[];

    for (int i = 0; i < list.length; i++) {
      final TreeNodeBean item = list[i];

      treeNodes.add(TreeNode(
        nodeInfo: item,
        offsetLeft: offsetLeft,
        titleOnTap: titleOnTap,
        leadingOnTap: leadingOnTap,
        trailingOnTap: trailingOnTap,
        children: _geneTreeNodes(item.children ?? []),
      ));
    }

    return treeNodes as List<TreeNode>;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(data.length, (int index) {
        final TreeNodeBean item = data[index];

        return TreeNode(
          nodeInfo: item,
          offsetLeft: offsetLeft,
          titleOnTap: titleOnTap,
          leadingOnTap: leadingOnTap,
          trailingOnTap: trailingOnTap,
          children: _geneTreeNodes(item.children ?? []),
        );
      }),
    );
  }
}
