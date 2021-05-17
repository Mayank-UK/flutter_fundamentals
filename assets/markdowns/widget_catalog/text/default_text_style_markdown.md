    DefaultTextStyle(
        style: TextStyle(fontSize: 36, color: Colors.blue),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                const Text(
                    'Default text',
                ),
                const Text(
                    'Override default text',
                    style: TextStyle(fontSize: 24),
                ),
                const Text(
                    'Default text',
                    style: TextStyle(color: Colors.red),
                ),
            ],
        ),
    )