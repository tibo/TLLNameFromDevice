This is just a simple UIDevice category which make you able to guess the firstname and lastname of your user from the iPhone device name.

This is absolutely not a certain solution, use it with awareness.

## Get started

Just drag the UIDevice+NameFromDevice.h/m files and include it where you need it.

This category provide 3 new methodes on the current devices:

``` objective-c
-(NSString *)fullNameFromDevice;
-(NSString *)firstName;
-(NSString *)lastName;
```

## Localizations

This category works with known patterns.
For now it handle basics English and French default namming such as:
- "John Doe's iPhone"
- "iPhone of John Doe"
- "iPhone de John Doe"

If you know other patterns from other languages, please contribute.

If you contribute, please add a basic test case in the test target to make sure your pattern is working.
(tests for the actuals patterns on the way, I'm still working on it)

## License

MIT license.