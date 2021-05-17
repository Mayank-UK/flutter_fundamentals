    Stack(
        children: [
            AnimatedPositioned(
                width: this._isToggled ? 200.0 : 50.0,
                height: this._isToggled ? 50.0 : 200.0,
                top: this._isToggled ? 150.0 : 50.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                ),
            ),
        ],
    ),