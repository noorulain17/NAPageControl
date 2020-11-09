# NAPageControl

UIPageControl’s Fancy One-Upping Cousin.

Designers _love_ to make beautifully custom page controls that fit in with all the wood, gradients, and inner shadows they've worked so hard perfecting. 

Who can blame them?! NAPageControl makes it dead simple to give them what they want. Even better, NAPageControl is a _drop in_ replacement for UIPageControl. It mirrors all the functions of UIPageControl, with literally no changes beyond the class name.


[Apps Currently Using NAPageControl](https://github.com/noorulain17/NAPageControl/wiki/Apps)

**Using SMPageControl in your application? Let us know, and we'll add your app the list of apps!** <mailto:spaceman@spacemanlabs.com>

**Using NAPageControl in your application? Let us know, and we'll add your app the list of apps!** <mailto:noorulain.ali89@gmail.com>

## More Customization!

NAPageControl has a variety of simple (yet powerful) areas of customization, and most all of them support the UIAppearance Proxy available to iOS 5.0 and newer.

* Indicator Size
* Indicator Spacing
* Indicator Alignment
* Images as Indicators
* Image Masks as Indicators
* Per-Indicator Customization
* Directly Tappable Indicators
* Extensive Support for UIAppearance
* Extended Support for UIAccessibility
* iOS 8 Ready

![Screenshot](https://raw.githubusercontent.com/noorulain17/NAPageControl/master/Example/Screenshots/NAPageControl-1.png)

## Example Usage

#### Objective C

``` objective-c
NAPageControl *pageControl = [[NAPageControl alloc] init];
pageControl.numberOfPages = 10;
pageControl.pageIndicatorImage = [UIImage imageNamed:@"pageDot"];
pageControl.currentPageIndicatorImage = [UIImage imageNamed:@"currentPageDot"];
[pageControl sizeToFit];
[self.view addSubview:pageControl];
```

#### Swift

``` swift
let pageControl = NAPageControl()
pageControl.numberOfPages = 10
pageControl.pageIndicatorImage = UIImage(named: "pageDot")
pageControl.currentPageIndicatorImage = UIImage(named: "currentPageDot")
pageControl.sizeToFit()
self.view.addSubview(pageControl)
```

## Direct Page Selection

Because NAPageControl has such a high degree of flexibility, it's not uncommon for indicator images to be large enough to tap directly. The `tapBehavior` property allows the page control indicators to be individually tappable.

#### Objective C

``` objective-c
NAPageControl *pageControl = [[NAPageControl alloc] init];
pageControl.tapBehavior = NAPageControlTapBehaviorJump;
```

#### Swift
``` swift
let pageControl = NAPageControl()
pageControl.tapBehavior = .tapBehaviorJump
```

## UIAccessibility Additions

UIPageControl (like all Apple controls) provides out of the box support for UIAccessibility. The default behavior is to set the accessibility value to "page [current page + 1] of [number of pages]". e.g. "page 1 of 10"

NAPageControl provides the exact same functionality, but also allows you to name individual pages. This is extremely useful when using per page indicator images, where one or more page is likely to have a specific usage that is identifiable to the user.

#### Objective C

``` objective-c
NAPageControl *pageControl = [[NAPageControl alloc] init];
[pageControl setImage:[UIImage imageNamed:@"searchDot"] forPage:0];
[pageControl setCurrentImage:[UIImage imageNamed:@"currentSearchDot"] forPage:0];
[pageControl setImage:[UIImage imageNamed:@"appleDot"] forPage:1];
[pageControl setCurrentImage:[UIImage imageNamed:@"currentAppleDot"] forPage:1];
[pageControl setName:@"Search" forPage:0];
[pageControl setName:@"Apple" forPage:1];

```

#### Swift

``` swift
let pageControl = NAPageControl()
pageControl.setImage(UIImage(named: "searchDot")!, forPage: 0)
pageControl.setCurrentImage(UIImage(named: "currentSearchDot")!, forPage: 0)
pageControl.setImage(UIImage(named: "appleDot")!, forPage: 1)
pageControl.setCurrentImage(UIImage(named: "currentAppleDot")!, forPage: 1)
pageControl.setName("Search", forPage: 0)
pageControl.setName("Apple", forPage: 1)
```

## More Info

The original blog post for this project can be found [here](http://www.ultrajoke.net/2012/10/smpagecontrol/).


## LICENSE
------------

Copyright (C) 2012-2020 by Spaceman Labs, Noor ul Ain Ali

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
