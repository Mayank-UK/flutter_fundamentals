    PopupMenuButton(
        itemBuilder: (BuildContext bc) => [
            PopupMenuItem(
                child: Text("New Chat"),
                value: "/newchat",
            ),
            PopupMenuItem(
                child: Text("New Group Chat"),
                value: "/new-group-chat",
            ),
            PopupMenuItem(
                child: Text("Settings"),
                value: "/settings",
            ),
        ],
        onSelected: (value) {},
    ),