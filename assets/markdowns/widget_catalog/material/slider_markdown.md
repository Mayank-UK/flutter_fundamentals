    class _SliderWidgetImplementation extends StatefulWidget {
        @override
        __SliderWidgetImplementationState createState() => __SliderWidgetImplementationState();
    }

    class __SliderWidgetImplementationState extends State<_SliderWidgetImplementation> {
        double _currentSliderValue = 20;

        @override
        Widget build(BuildContext context) {
            return Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                    setState(() {
                        _currentSliderValue = value;
                    });
                },
            );     
        }
    }
