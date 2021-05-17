    class _SwitchWidgetImplementation extends StatefulWidget {
        @override
        __SwitchWidgetImplementationState createState() => __SwitchWidgetImplementationState();
    }

    class __SwitchWidgetImplementationState extends State<_SwitchWidgetImplementation> {
        bool status = false;

        @override
        Widget build(BuildContext context) {
            return Switch(
                value: status,
                onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                        status = value;
                    });
                },
            );
        }
    }
