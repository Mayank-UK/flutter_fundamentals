# using ListView
    ListView(
        shrinkWrap: true,
        children: [
            ListTile(
                subtitle: const Text('sub-title'),
                title: const Text('title'),
                tileColor: Colors.amber,
            ),
            ListTile(
                title: const Text('title'),
                subtitle: const Text('sub-title'),
                tileColor: Colors.amberAccent,
            ),
            ListTile(
                title: const Text('title'),
                subtitle: const Text('sub-title'),
                tileColor: Colors.amber,
            ),
            ListTile(
                title: const Text('title'),
                subtitle: const Text('sub-title'),
                tileColor: Colors.amberAccent,
            ),
        ],
    ),

# using ListView.builder
    ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
            return Container(
                alignment: Alignment.center
                color: Colors.amber,
                height: 50,
                margin: const EdgeInsets.only(bottom: 4),
                child: Text('Entry $index'),
            );
        },
    ),

# using ListView.separated
    ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext ctxt, int index) {
            return Container(
                height: 50,
                color: Colors.amber,
                child: Center(
                    child: Text('Item $index'),
                ),
            );
        },
        separatorBuilder: (BuildContext ctxt, index) {
            return SizedBox(
                height: 10,
            );
        },
    ),