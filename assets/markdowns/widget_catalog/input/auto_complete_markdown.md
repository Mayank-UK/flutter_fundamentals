    Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
            }
            return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
            });
        },
        onSelected: (String selection) {
            print('You just selected $selection');
        },
    ),