🚀 Features

✅ Simple API – just call object.info(), object.error(), etc.

✅ Clickable logs – one click takes you to the exact file & line in Android Studio / IntelliJ.

✅ Colored logs (info, warning, error, success, etc.) for better readability.

✅ Works with any Dart object.

✅ Zero external dependencies.

📥 Installation

Add to your pubspec.yaml:

dependencies:
  logger_master: ^1.0.0+1


Then run:

flutter pub get

🛠️ Usage
Import
import 'package:logx/logx.dart';

Example
void main() {
  final user = {'id': 1, 'name': 'Rooze'};

  // Log info
  user.info();

  // Log with a custom tag
  user.debug('USER_DATA');

  // Log an error
  Exception('Something went wrong').error();

  // Log a success message
  'Operation completed successfully!'.success();
}

🎨 Colored Output
Method	Example Usage	Output Color
info()	"Hello".info()	🟦 Blue
debug()	"Debug".debug()	🟩 Green
warning()	"Careful".warning()	🟨 Yellow
error()	"Oops".error()	🟥 Red
success()	"Done".success()	🟩 Bright Green
🖱️ Clickable Logs

When you run your app in Android Studio or IntelliJ, logs printed by LogX look like this:

I/LogX: [INFO] user: {id: 1, name: Rooze}   (main.dart:12)


👉 Clicking (main.dart:12) takes you directly to that file and line in your code.

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
