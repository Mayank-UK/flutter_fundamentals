    PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Text('First Page'),
            ),
            Container(
                alignment: Alignment.center,
                child: Text('Second Page'),
            ),
            Container(
                alignment: Alignment.center,
                child: Text('Third Page'),
            )
        ],
    ),