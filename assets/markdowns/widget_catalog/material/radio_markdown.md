    enum SingingCharacter { lafayette, jefferson }

    class _RadioWidgetImplementation extends StatefulWidget {
        @override
        __RadioWidgetImplementationState createState() => __RadioWidgetImplementationState();
    }

    class __RadioWidgetImplementationState extends State<_RadioWidgetImplementation> {
        SingingCharacter _character = SingingCharacter.lafayette;

        @override
        Widget build(BuildContext context) {
            return Column(
                children: <Widget>[
                    ListTile(
                        title: const Text('Lafayette'),
                        leading: Radio<SingingCharacter>(
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                                setState(() {
                                _character = value;
                                });
                            },
                        ),
                    ),
                    ListTile(
                        title: const Text('Thomas Jefferson'),
                        leading: Radio<SingingCharacter>(
                            value: SingingCharacter.jefferson,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                                setState(() {
                                    _character = value;
                                });
                            },
                        ),
                    ),
                ],
            ),           
        }
    }
