![Panda](https://raw.githubusercontent.com/wordlessj/Panda/master/Assets/Logo.png)

<br>

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](#carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Panda.svg)](#cocoapods)
![Swift 5](https://img.shields.io/badge/Swift-5-orange.svg)
![Platform](https://img.shields.io/badge/platform-iOS%208.0%2B-lightgrey.svg)
[![Build Status](https://travis-ci.org/wordlessj/Panda.svg?branch=master)](https://travis-ci.org/wordlessj/Panda)

Create view hierarchies declaratively.

## Quick Look

```swift
view.pd.add(
    imageView.pd.image(logoImage),
    label.pd.text("Logo").textColor(.red).font(size: 20),
    button.pd.title("Go").action(buttonTapped)
)
```

It’s much shorter and concise than the imperative API, and easier to edit than storyboards.

## Installation

### Carthage

```
github "wordlessj/Panda" ~> 2.0
```

### CocoaPods

```
pod 'Panda', '~> 2.0'
```

## Usage

### Basics

**ALL** settable properties and set methods in UIKit and Core Animation are available in `pd` extension, `set` prefixes are removed.

Views are configured and added to a superview as you see in [Quick Look](#quick-look), you can also nest `add()` to create a more complex hierarchy, note that configuration by `pd` is optional.

```swift
view.pd.add(
    containerView.pd.clipsToBounds(true).add(
        view1.pd.backgroundColor(.red)
    ),
    view2
)
```

Other types that can be added by `add*()` methods are also supported, like `UIGestureRecognizer` and `UILayoutGuide`. Don’t put them all in one `add()` method, grouping is recommended.

```swift
view.pd.add(
    // view hierarchy
).add(
    layoutGuide.pd.identifier("center guide")
).add(
    tapGestureRecognizer.pd.numberOfTapsRequired(2).action(doubleTapped)
)
```

Objects can be configured inline and passed to a method, if the method accepts a `*Convertible`.

```swift
// mask() accepts a UIViewConvertible.
// You can pass a plain or configured UIView.
view.pd.mask(
    maskView.pd.backgroundColor(.white)
)
```

### Add and Remove

`add()` and `remove()` methods are available on types below, followed by types that can be added. `remove()` is basically used to remove multiple object at once without configuration.

| Type | Types which can be added |
|:--|:--|
| `CALayer` | `CALayer`, `CAAnimation` |
| `UIAlertController` | `UIAlertAction`, `UIViewController`, `UIKeyCommand` |
| `UIDynamicAnimator` | `UIDynamicBehavior` |
| `UIDynamicBehavior` | `UIDynamicBehavior` |
| `UIView` | `UIView`, `UIGestureRecognizer`, `UIMotionEffect`, `NSLayoutConstraint`, `UILayoutGuide`, `UIInteraction` |
| `UIViewController` | `UIViewController`, `UIKeyCommand` |

> `UIView` is added to `UIStackView` using `addArrangedSubview()`.

### Custom Properties

With smart key paths, you can use `set()` to set custom properties not found in Panda.

```swift
customView.pd.set(\.flashes, true)
```

### Action

Target-actions are replaced with `action()` taking a closure. They’re available on following types.

- `CADisplayLink`, an initializer instead of `action()`.
- `UIAccessibilityCustomAction`
- `UIBarButtonItem`
- `UIControl`
- `UIGestureRecognizer`

### Font

`UIFont` factory methods are available directly as following methods.

- `font(style:)`
- `font(style:compatibleWith:)`
- `font(size:)`
- `font(size:weight:)`
- `font(boldSize:)`
- `font(italicSize:)`
- `font(monospacedDigitSize:weight:)`

They’re available on following types.

- `UIButton`, set font of `titleLabel`.
- `UILabel`
- `UISimpleTextPrintFormatter`
- `UITextField`
- `UITextView`

### Transform

There’re several convenient methods to set transform on `UICollectionViewLayoutAttributes` and `UIView`. Each of them has a corresponding `concat*()` method to concatenate a transform to existing transform.

- `rotation(radian:)`
- `rotation(degree:)`
- `scale(x:y:)`
- `scale(_:)`
- `translation(x:y:)`

### Control States and Bar Metrics

For set methods taking a `UIControlState` or `UIBarMetrics` like `title(_:for:)`, there’re convenience methods to set for all states or metrics like `title(_:highlighted:selected:disabled:)`, the first parameter is for normal state, and the other parameters are optional.

### Compositions

For convenience, there’re several composition methods which set multiple properties at once.

| Types | Composition | Components |
|:--|:--|:--|
| `CALayer` | `border` | `borderWidth`, `borderColor` |
| `CALayer` | `shadow` | `shadowOpacity`, `shadowRadius`, `shadowOffset`, `shadowColor`, `shadowPath` |
| `UICollectionView`, `UIPageViewController`, `UIPickerView`, `UITableView` | `sourceDelegate` | `dataSource`, `delegate` |
| `UILabel` | `shadow` | `shadowColor`, `shadowOffset` |
| `UIScrollView` | `alwaysBounce` | `alwaysBounceHorizontal`, `alwaysBounceVertical` |
| `UIScrollView` | `showsScrollIndicators` | `showsHorizontalScrollIndicator`, `showsVerticalScrollIndicator` |
| `UIView` | `border` | `layer.border` |
| `UIView` | `cornerRadius` | `layer.cornerRadius`, `layer.masksToBounds` to `true` |
| `UIView` | `shouldRasterize` | `layer.shouldRasterize`, `layer.rasterizationScale` to screen's scale |
| `UIView` | `shadow` | `layer.shadow` |

### Set-Like Methods

Some methods don’t begin with `set` but are usually called while configuring, they are available as well.

- `UIAlertController.pd.addTextField(configure:)`
- `UIGestureRecognizer.pd.require(toFail:)`

### Register and Dequeue

For `UICollectionView` and `UITableView`, an identifier is required when registering and dequeuing cells and views, and force casting to a specific type is usually needed. In practice, one identifier is associated with one specific type, so you can use the type itself instead of an identifier.

```swift
collectionView.pd.register(CustomCell.self)

let cell: CustomCell = collectionView.pd.dequeue(CustomCell.self, for: indexPath)
```

### Reuse

If more than one object share similar configurations, or you want to create something like CSS, you can extract configurations into a method, then apply the method using `do()`.

```swift
view.pd.add(
    firstLabel.pd.do(configLabel),
    secondLabel.pd.do(configLabel)
)

func configLabel(_ label: UILabel) {
    label.pd.textColor(.red).font(size: 20).numberOfLines(0)
}
```

## Bamboo

[Bamboo](https://github.com/wordlessj/Bamboo) is a framework which makes Auto Layout and manual layout in one line, together with Panda, they make creating views in code incredibly simple and easy.

## License

Panda is released under the MIT license. See LICENSE for details.
