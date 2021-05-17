    DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                border: Border.all(
                color: const Color(0xFF000000),
                style: BorderStyle.solid,
                width: 4.0,
            ),
            borderRadius: BorderRadius.zero,
            shape: BoxShape.rectangle,
            boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Color(0x66000000),
                    blurRadius: 10.0,
                    spreadRadius: 4.0,
                )
            ],
        ),
        child: Container(
            child: Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(20),
                child: FlutterLogo(),
            ),
        ),
    ),