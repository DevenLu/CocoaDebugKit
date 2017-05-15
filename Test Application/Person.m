//
//  Person.m
//  CocoaDebugFramework
//
//  Created by Patrick Kladek on 18.04.16.
//  Copyright (c) 2016 Patrick Kladek. All rights reserved.
//

#import "Person.h"
#import <CocoaDebugKit/CocoaDebugKit.h>


@implementation Person

- (id)debugQuickLookObject
{
	CocoaDebugView *view = [CocoaDebugView debugViewWithAllPropertiesOfObject:self includeSuperclasses:YES];
	
	return view;
}

@end
