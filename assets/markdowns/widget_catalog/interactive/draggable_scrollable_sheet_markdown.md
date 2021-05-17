    DraggableScrollableSheet(
        builder: (BuildContext context,
            ScrollController scrollController) {
            return Container(
                color: Colors.amber,
                child: ListView.builder(
                    shrinkWrap: true,
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                        return ListTile(title: Text('Item $index'));
                    },
                ),
            );
        },
    ),