    class _HeroWidgetImplementation extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Container(
                child: _MainScreen(),
            );
                   
        }
    }

    class _MainScreen extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return GestureDetector(
                child: Hero(
                    tag: 'imageHero',
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://picsum.photos/250?image=9',
                            height: 100,
                            width: 100,
                        ),
                    ),
                ),
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return _SecondaryScreen();
                    }));
                },
            );
        }
    }

    class _SecondaryScreen extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return GestureDetector(
                child: Center(
                    child: Hero(
                    tag: 'imageHero',
                    child: Image.network(
                        'https://picsum.photos/250?image=9',
                    ),
                    ),
                ),
                onTap: () {
                    Navigator.pop(context);
                },
            );
        }
    }
