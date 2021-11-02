import 'package:flutter/material.dart';
import 'package:flutter_tree/src/tree_node_bean.dart';

class TreeNode extends StatefulWidget {
  final int level;
  final bool expand;
  final double offsetLeft;
  final List<Widget> children;

  final Function(TreeNodeBean? nodeInfo)? titleOnTap;
  final Function(TreeNodeBean? nodeInfo)? leadingOnTap;
  final Function(TreeNodeBean? nodeInfo)? trailingOnTap;
  final TreeNodeBean? nodeInfo;

  const TreeNode({
    required this.nodeInfo,
    this.level = 0,
    this.expand = false,
    this.offsetLeft = 24.0,
    this.children = const [],
    this.titleOnTap,
    this.leadingOnTap,
    this.trailingOnTap,
  });

  @override
  _TreeNodeState createState() => _TreeNodeState();
}

class _TreeNodeState extends State<TreeNode>
    with SingleTickerProviderStateMixin {
  bool _isExpand = false;

  late AnimationController _rotationController;
  final Tween<double> _turnsTween = Tween<double>(begin: 0.0, end: -0.5);

  bool isCheck = false;

  initState() {
    _isExpand = widget.expand;
    _rotationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final level = widget.level;
    final children = widget.children;
    final offsetLeft = widget.offsetLeft;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    isCheck = !isCheck;
                  });
                  if (widget.leadingOnTap != null &&
                      widget.leadingOnTap is Function) {
                    widget.leadingOnTap!(widget.nodeInfo);
                  }
                },
                child: Center(
                  child: (widget.nodeInfo?.showCheckBox == true)
                      ? Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = (value ?? false);
                            });
                          })
                      : Container(),
                ),
              ),
              SizedBox(width: 6.0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (widget.titleOnTap != null &&
                        widget.titleOnTap is Function) {
                      widget.titleOnTap!(widget.nodeInfo);
                    }
                  },
                  child: Text(widget.nodeInfo?.name ?? '标题'),
                ),
              ),
              SizedBox(width: 6.0),
              Visibility(
                visible: children.length > 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpand = !_isExpand;
                        if (_isExpand) {
                          _rotationController.forward();
                        } else {
                          _rotationController.reverse();
                        }
                        if (widget.trailingOnTap != null &&
                            widget.trailingOnTap is Function) {
                          widget.trailingOnTap!(widget.nodeInfo);
                        }
                      });
                    },
                    child: RotationTransition(
                      child: (widget.nodeInfo?.expand == true)
                          ? const IconButton(
                              icon: Icon(Icons.expand_more),
                              iconSize: 16,
                              onPressed: null,
                            )
                          : Container(),
                      turns: _turnsTween.animate(_rotationController),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: children.length > 0 && _isExpand,
          child: Padding(
            padding: EdgeInsets.only(left: level + 1 * offsetLeft),
            child: Column(
              children: widget.children,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
      ],
    );
  }
}
