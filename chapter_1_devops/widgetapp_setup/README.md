# WidgetApp SetUp

Part of the problem of Google essentially developing 4 front-end frameworks is that they lack some time to polish the Flutter SDK docs. Namely, we no longer use the MaterialApp on non Apple and CupertinoApp on Apple devices setup anymore even though its still in the docs.

As of late Flutter 2.x, we now use the MaterialApp only as it has the other two high contrast theme slots for Apple devices and the SDK itself has adaptive constructors for those widgets that need Apple stylings.

And, we no longer use the default MaterialApp constructor but instead use the MaterialApp.router so that we can create apps with the more powerful Navigator 2.0 API. This folder details the code setup and tricks to the MaterialApp.router constructor.