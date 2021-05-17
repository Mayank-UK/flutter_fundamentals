    class _ShowDatePickerWidgetImplementation extends StatefulWidget {
        @override
        __ShowDatePickerWidgetImplementationState createState() => __ShowDatePickerWidgetImplementationState();
    }

    class __ShowDatePickerWidgetImplementationState extends State<_ShowDatePickerWidgetImplementation> {
        DateTime selectedDate = DateTime.now();

        Future<void> _selectDate(BuildContext context) async {
            final DateTime picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2015, 8),
                lastDate: DateTime(2101),
            );

            if (picked != null && picked != selectedDate)
                setState(() {
                    selectedDate = picked;
                });
        }

        @override
        Widget build(BuildContext context) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select date'),
                ),
                ],
            );
        }
    }
