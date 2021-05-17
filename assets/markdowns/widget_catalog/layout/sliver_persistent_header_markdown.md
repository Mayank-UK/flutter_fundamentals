    SliverPersistentHeader(
        pinned: true,
        delegate: _SliverAppBarDelegate(
            child: PreferredSize(
                preferredSize: Size.fromHeight(40.0),
                child: Container(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 8.0,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Text(
                                    'SliverPersistentHeader',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                    ),
                                )
                            ],
                        ),
                    ),
                ),
            ),
        ),
    ),