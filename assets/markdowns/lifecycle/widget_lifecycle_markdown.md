    class ExampleWidget extends StatefulWidget {
        @override
        _ExampleWidgetState createState() => _ExampleWidgetState();
    }

    class _ExampleWidgetState extends State<ExampleWidget> {
        String data = 'default value';

        @override
        void initState() {
            // TODO: implement initState
            super.initState();
        }

        @override
        void didChangeDependencies() {
            // TODO: implement didChangeDependencies
            super.didChangeDependencies();
        }

        @override
        void didUpdateWidget(covariant ExampleWidget oldWidget) {
            // TODO: implement didUpdateWidget
            super.didUpdateWidget(oldWidget);
        }

        @override
        void deactivate() {
            // TODO: implement deactivate
            super.deactivate();
        }

        @override
        void dispose() {
            // TODO: implement dispose
            super.dispose();
        }

        void anyRandomMethod() {
            setState(() {
            this.data = 'custom value';
            });
        }

        @override
        Widget build(BuildContext context) {
            return Container(
            child: Text('Lifecycle hooks implemented on this widget.'),
            );
        }
    }
