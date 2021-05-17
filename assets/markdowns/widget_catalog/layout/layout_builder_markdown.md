    LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
            return _buildWideContainers();
            } else {
            return _buildNormalContainer();
            }
        },
    ),