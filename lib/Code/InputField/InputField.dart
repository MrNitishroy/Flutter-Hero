var inputField1 = '''TextField(
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: "Input Here",
      ),
    );''';
var codeInputWIthIcon = '''TextField(
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.alternate_email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Enter email id",
          ),
        ),''';
var codeNumberInput = ''' TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.numbers_rounded),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Enter Number Only",
          ),
        ),''';
var codeAlphabetOnlyInput = ''' TextField(
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
          ],
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.abc),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "Alphabets only",
          ),
        ),''';
var codeAlphaNumericInput = '''TextField(
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
          ],
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            filled: true,
            prefixIcon: Icon(Icons.abc),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: "AlphaNumberic only",
          ),
        ),''';
var lableInputCode = '''TextFormField(
          decoration: InputDecoration(
            labelText: 'Type something',
            labelStyle: Theme.of(context).textTheme.labelLarge,
            border: OutlineInputBorder(
              
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ),
          onChanged: (String value) {},
        )''';
