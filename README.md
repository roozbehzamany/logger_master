🚀 Features

✅ Simple API – just call object.info(), object.error(), etc.

✅ Clickable logs – one click takes you to the exact file & line in Android Studio / IntelliJ.

✅ Colored logs (info, warning, error, debug.) for better readability.

✅ Works with any Dart object.

✅ Zero external dependencies.

<img width="1067" height="121" src="https://github.com/user-attachments/assets/edff24fa-ef1a-4793-b141-e399d6466606" />

<img width="1000" height="400" src="https://github. com/user-attachments/assets/d58e225b-250c-404c-967c-da63559b03a2" />

1: Type your object like [String] ...

2: Your object [Hello World]

3: Exact file line logger

4: Number of line logger

📥 Installation

Add to your pubspec.yaml:

```dart
dependencies:
  logger_master: ^1.0.0+2
```

Then run:

flutter pub get

🛠️ Usage

```dart

import 'package:logger_master/logger_master.dart';

void main() {
  ExampleModel exampleModel = ExampleModel(id: 1, name: "Example");

  // Log info
  "Hello World".logInfo();

  // Log with a custom tag
  exampleModel.logWarning();
  exampleModel.name.logError();

  // Log an error
  123.logDebug();
}
```

🎨 Colored Output
Method	Example Usage	Output Color

logInfo()	"Hello".logInfo()	🟦 Blue

logDebug()	"Debug".logDebug()	🟩 Green

logWarning()	"Careful".logWarning()	🟨 Yellow

logError()	"Oops".logError()	🟥 Red

🖱️ Clickable Logs

When you run your app in Android Studio or IntelliJ, logs printed by logger look like this:

[String] Hello World [file://package:example/main.dart:10]


👉 Clicking (main.dart:10) takes you directly to that file and line in your code.

This makes debugging faster and smoother – no more searching for where a log was printed!

⚙️ Customization

You can enable/disable colors:

object.info(colored: false);


Or add tags:

object.debug('NETWORK');

📌 Roadmap

 JSON pretty-printing

 File logging support

 Flutter-only extension (snackbar + toast logs)

❤️ Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check issues page
.

📄 License

This project is licensed under the MIT License.
