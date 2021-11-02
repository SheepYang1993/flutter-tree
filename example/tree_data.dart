final List<Map<String, dynamic>> treeData = [
  {
    "title": "Title1",
    "expaned": true,
    "children": [
      {
        "title": "Title1-1",
        "expaned": true,
        "children": [],
      },
    ],
  },
  {
    "title": "Title2",
    "expaned": true,
    "children": [
      {
        "title": "Title2-1",
        "expaned": false,
        "children": [
          {
            "title": "Title2-1-1",
            "expaned": false,
            "children": [],
          },
          {
            "title": "Title2-1-2",
            "expaned": false,
            "children": [
              {
                "title": "Title2-1-2-1",
                "expaned": false,
                "children": [],
              },
              {
                "title": "Title2-1-2-2",
                "expaned": false,
                "children": [
                  {
                    "title": "Title2-1-2-2-1",
                    "expaned": true,
                    "children": [],
                  },
                  {
                    "title": "Title2-1-2-2-2",
                    "expaned": true,
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
