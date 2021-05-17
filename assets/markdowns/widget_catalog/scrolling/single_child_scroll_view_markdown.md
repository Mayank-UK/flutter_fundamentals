    SingleChildScrollView(
        child: Column(
            children: [
                Container(
                    alignment: Alignment.center,
                    color: Colors.amber,
                    height: 200,
                    width: double.infinity,
                    child: Text('Section 1'),
                ),
                Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    height: 200,
                    margin: const EdgeInsets.only(top: 8),
                    width: double.infinity,
                    child: Text('Section 2'),
                ),
                Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    height: 200,
                    margin: const EdgeInsets.only(top: 8),
                    width: double.infinity,
                    child: Text('Section 3'),
                ),
            ],
        ),
    ),