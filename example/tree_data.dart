final List<Map<String, dynamic>> treeData = [
  {
    "title": "Title1",
    "expand": true,
    "children": [
      {
        "title": "Title1-1",
        "expand": true,
        "children": [],
      },
    ],
  },
  {
    "title": "Title2",
    "expand": true,
    "children": [
      {
        "title": "Title2-1",
        "expand": false,
        "children": [
          {
            "title": "Title2-1-1",
            "expand": false,
            "children": [],
          },
          {
            "title": "Title2-1-2",
            "expand": false,
            "children": [
              {
                "title": "Title2-1-2-1",
                "expand": false,
                "children": [],
              },
              {
                "title": "Title2-1-2-2",
                "expand": false,
                "children": [
                  {
                    "title": "Title2-1-2-2-1",
                    "expand": true,
                    "children": [],
                  },
                  {
                    "title": "Title2-1-2-2-2",
                    "expand": true,
                    "children": [],
                  },
                ],
              },
            ],
          },
        ],
      },
    ],
  },
];
