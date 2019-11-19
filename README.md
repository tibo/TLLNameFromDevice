This is a simple UIDevice category that will potentially enable you able to guess the first and last name of a user from the iPhone's device name.

This is absolutely not a fool-proof solution, use it with caution.

## Get started

Just drag the UIDevice+NameFromDevice.h/m files and include it where you need it.

This category provides the following methods that work with current devices (iPhone, iPad, iPod):

``` objective-c
-(NSString *)fullNameFromDevice;
-(NSString *)firstName;
-(NSString *)lastName;
```

## Localizations

This category works with known patterns. For now it handles basic English, French, and Italian default naming such as:
- "John Doe's iPhone"
- "iPhone of John Doe"
- "iPhone de John Doe"
- "iPhone di John Doe"

If you know other patterns from other languages, please contribute.

If you contribute, please add a basic test case in the test target to make sure your pattern is working.
(tests for the actuals patterns on the way, I'm still working on it)

## License

MIT license.
