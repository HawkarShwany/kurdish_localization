# kurdish_localization

This package provides localization support for Kurdish locale.

## Getting Started

### Depend on it

Add this to your package's pubspec.yaml file:

```
dependencies:
  kurdish_localization: ^0.0.1

```
### Install it

You can install packages from the command line:

with Flutter:

```
$ flutter pub get
```

### Import it

```
import 'package:kurdish_localization/kurdish_localization.dart';
```

### Use it

```
MaterialApp(
      localizationsDelegates: [
        ...
        KuMaterialLocalizations.delegate,
        KuWidgetLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('ku', ''),
      ],
      locale: Locale('ku'),
    );
```