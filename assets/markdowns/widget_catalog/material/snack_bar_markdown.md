    final Widget snackBar = SnackBar(
      content: const Text('This is a snackbar'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);