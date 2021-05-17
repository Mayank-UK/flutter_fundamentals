    GestureDetector(
        onTap: () {
            final Widget snackBar = SnackBar(content: const Text('Click/tap registered'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
            alignment: Alignment.center,
            color: Colors.amber,
            height: 100,
            padding: const EdgeInsets.all(16),
            width: 200,
            child: Text(
                'Tap anywhere on this container',
            ),
        ),
    ),