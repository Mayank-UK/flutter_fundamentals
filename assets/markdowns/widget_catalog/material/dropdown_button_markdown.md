    class _DropdownButtonWidgetImplementation extends StatefulWidget {
        @override
        __DropdownButtonWidgetImplementationState createState() => __DropdownButtonWidgetImplementationState();
    }

    class __DropdownButtonWidgetImplementationState extends State<_DropdownButtonWidgetImplementation> {
        String dropdownValue = 'One';

        @override
        Widget build(BuildContext context) {
            return DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                    setState(() {
                        dropdownValue = newValue;
                    });
                },
                items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                    );
                }).toList(),
            );              
        }
    }
