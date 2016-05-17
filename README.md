# pkDebugFramework
Tools for debugging with Xcode


This project helps developers to visualize custom objects and will therefore speed up your development process.

Lets say we have a custom Object called "Person" and want to inspect all variables in Xcode. This will look something like that:

![alt text](file:///Users/patrick/Desktop/Doc/old Debug.png "Logo Title Text 1")

With this framework it will look like this:

![alt text](file:///Users/patrick/Desktop/Doc/new Debug.png "Logo Title Text 1")


So how can we achieve this goal? It´s easy just add this Framework to your Project and implement this method in your custom object:

```objective-c
#import "Person.h"
#import <pkDebugFramework/pkDebugFramework.h>


@implementation Person

- (id)debugQuickLookObject
{
	pkDebugView *view = [pkDebugView debugViewWithAllPropertiesOfObject:self includeSubclasses:YES];
	
	return view;
}

@end
```

After that set a breakpoint in your code, select an object you want to inspect and hit space. This will open a small quicklook popover with the contents of your object.
