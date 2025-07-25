---
title: Tuist 1.5.0 - Scaffold command, performance, Mint
category: "product"
tags: [Tuist, release, swift, project generation, xcode, apple, '1.5.0']
excerpt: Tuist's new version 1.5.0 brings scaffold command, performance improvements and Mint support
author: fortmarek
---

Tuist is being worked on even from home 🏡 and I am stoked to present to you what's new.
It's not even so long ago that the version 1.4.0 has been released, but there's already enough new improvements to justify a new one!
That includes a brand new command `scaffold`, or [Mint](https://github.com/yonaskolb/Mint) suppport, besides new features we are working hard on making generation faster and more performant 🏎
Let's see in detail what this release brings.

## Scaffold command

A lot of teams or even individuals have some common structure for their features or components,
but creating a new one has meant using a custom solution or copy&paste,
which is tedious and takes away time that developers can focus on coding.

To fix this common problem we are introducing a new `scaffold` command.
For example if you use modular architecture with feature frameworks,
you can set up a new manifest called `Template.swift` to generate
`Project.swift`, tests and an example.
Then you can run `tuist scaffold framework --name MyFramework` and you're all set!
Or if you want to create a new feature framework following VIPER architecture,
you might call `tuist scaffold viper --name Home`. The possibilites are really endless 🙂
To read more about how it works you can do so on [commands](https://docs.old.tuist.io/commands/scaffold/) documentation page.

We are excited too see what _you_ will be able to do with it!

## Performance improvements

[Kas](https://github.com/kwridan) has been hard at work at making Tuist more performant,
which will make interacting with large projects even more delightful.

Besides [optimizing](https://github.com/Tuist/Tuist/pull/1094) build phase generator,
I'd point out an astonishing 50 % speed improvement of [WorkspaceGenerator](https://github.com/Tuist/Tuist/pull/1096)
by implementing concurrent project generation.

## Mint support

If you use [Mint](https://github.com/yonaskolb/Mint),
we have some good news, too.
Thanks to the magnificent [job](https://github.com/Tuist/Tuist/pull/1131) by [Daniel](https://github.com/mollyIV),
it is now supported in `Setup.swift`.

To get yourself going, just make sure you have Mintfile in your directory
and add `.Mint()` to `Setup.swift`.

It will then download all dependencies
and it makes setting up developer's workspace even easier.

## Bug fixes and improvements

- [TargetNode](https://github.com/Tuist/Tuist/pull/1095) set operations optimization
- [Graphing](https://github.com/Tuist/Tuist/pull/1128) protocol removed
