class TreeNodeBean {
  String? name;
  bool? expand;
  bool? showCheckBox;
  List<TreeNodeBean>? children;

  TreeNodeBean({
    this.name,
    this.expand = true,
    this.showCheckBox,
    this.children,
  });

  TreeNodeBean.fromJson(Map<String?, dynamic> json) {
    name = json['name'];
    expand = json['expand'];
    showCheckBox = json['showCheckBox'];
    if (json["children"] != null) {
      children = [];
      json["children"].forEach((v) {
        children!.add(TreeNodeBean.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['expand'] = this.expand;
    data['showCheckBox'] = this.showCheckBox;
    if (children != null) {
      data["children"] = children!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'TreeNodeBean{name: $name, expand: $expand, showCheckBox: $showCheckBox, children: $children}';
  }
}
