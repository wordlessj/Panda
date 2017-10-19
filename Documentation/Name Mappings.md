# Name Mappings

## General

- Type name prefixes are removed, e.g., `activityIndicatorViewStyle` to `style`.

| Original | New |
|:--|:--|
| `alignment` | `align` |
| `adjustment` | `adjust` |
| `arrangement` | `arrange` |
| `backgroundColor` | `background` |
| `backgroundImage` | `background` |
| `backgroundView` | `background` |
| `identifier` | `id` |
| `largeContentSizeImage` | `largeImage` |
| `layoutMargins` | `margins` |
| `maximum` | `max` |
| `minimum` | `min` |
| `numberOf` | Removed |
| `scaleFactor` | `scale` |
| `scrollIndicator` | `indicator` |
| `textAttributes` | `attributes` |
| `timingFunction` | `timing` |
| `tintColor` | `tint` |
| `userInteractionEnabled` | `interactable` |

## Specific

These mappings are usually specific to one class but may be common in several classes, they are put in the representing class.

### `UIView`

| Original | New |
|:--|:--|
| `autoresizesSubviews` | `autoresizes` |
| `autoresizingMask` | `autoresizing` |
| `clearsContextBeforeDrawing` | `clearsContext` |
| `clipsToBounds` | `clips` |
| `contentCompressionResistancePriority` | `resistancePriority` |
| `contentHuggingPriority` | `huggingPriority` |
| `contentMode` | `mode` |
| `multipleTouchEnabled` | `multiTouchable` |
| `semanticContentAttribute` | `semantics` |
| `tintAdjustmentMode` | `tintAdjust` |
| `translatesAutoresizingMaskIntoConstraints` | `translatesAutoresizing` |

### `UIBarButtonItemGroup`

| Original | New |
|:--|:--|
| `barButtonItems` | `items` |

### `UIButton`

| Original | New |
|:--|:--|
| `contentEdgeInsets` | `contentInsets` |
| `imageEdgeInsets` | `imageInsets` |
| `titleEdgeInsets` | `titleInsets` |

### `UICollectionView`

| Original | New |
|:--|:--|
| `allowsMultipleSelection` | `multiSelectable` |
| `allowsSelection` | `selectable` |
| `dragInteractionEnabled` | `draggable` |
| `prefetchDataSource` | `prefetchSource` |
| `prefetchingEnabled` | `prefetchs` |
| `remembersLastFocusedIndexPath` | `remembersLastFocus` |

### `UICollectionViewFlowLayout`

| Original | New |
|:--|:--|
| `footerReferenceSize` | `footerSize` |
| `headerReferenceSize` | `headerSize` |
| `scrollDirection` | `direction` |
| `sectionFootersPinToVisibleBounds` | `footersPinned` |
| `sectionHeadersPinToVisibleBounds` | `headersPinned` |

### `UIControl`

| Original | New |
|:--|:--|
| `contentHorizontalAlignment` | `horizontalAlign` |
| `contentVerticalAlignment` | `verticalAlign` |

### `UIGestureRecognizer`

| Original | New |
|:--|:--|
| `requiresExclusiveTouchType` | `exclusiveTouchType` |

### `UILabel`

| Original | New |
|:--|:--|
| `adjustsFontSizeToFitWidth` | `adjustsFontSize` |
| `allowsDefaultTighteningForTruncation` | `tightenable` |
| `highlightedTextColor` | `highlightedColor` |
| `lineBreakMode` | `lineBreak` |
| `preferredMaxLayoutWidth` | `maxWidth` |
| `textAlignment` | `align` |
| `textColor` | `color` |

### `UILongPressGestureRecognizer`

| Original | New |
|:--|:--|
| `minimumPressDuration` | `minDuration` |

### `UINavigationBar`

| Original | New |
|:--|:--|
| `barStyle` | `style` |

### `UINavigationItem`

| Original | New |
|:--|:--|
| `backBarButtonItem` | `backItem` |
| `largeTitleDisplayMode` | `largeTitleMode` |
| `leftBarButtonItem` | `leftItem` |
| `leftBarButtonItems` | `leftItems` |
| `rightBarButtonItem` | `rightItem` |
| `rightBarButtonItems` | `rightItems` |

### `UIScrollView`

| Original | New |
|:--|:--|
| `contentInsetAdjustmentBehavior` | `contentInsetAdjust` |
| `directionalLockEnabled` | `directionLocked` |
| `pagingEnabled` | `paged` |
| `scrollEnabled` | `scrollable` |

### `UIStackView`

| Original | New |
|:--|:--|
| `baselineRelativeArrangement` | `baselineArrange` |
| `layoutMarginsRelativeArrangement` | `marginsArrange` |

### `UITableView`

| Original | New |
|:--|:--|
| `allowsSelectionDuringEditing` | `selectableDuringEditing` |
| `allowsMultipleSelectionDuringEditing` | `multiSelectableDuringEditing` |
| `estimatedSectionFooterHeight` | `estimatedFooterHeight` |
| `estimatedSectionHeaderHeight` | `estimatedHeaderHeight` |
| `sectionFooterHeight` | `footerHeight` |
| `sectionHeaderHeight` | `headerHeight` |

### `UITapGestureRecognizer`

| Original | New |
|:--|:--|
| `numberOfTapsRequired` | `taps` |
| `numberOfTouchesRequired` | `touches` |

### `UITextField`

| Original | New |
|:--|:--|
| `allowsEditingTextAttributes` | `attributesEditable` |

### `UITextView`

| Original | New |
|:--|:--|
| `textContainerInset` | `containerInset` |

### `CABasicAnimation`

| Original | New |
|:--|:--|
| `byValue` | `by` |
| `fromValue` | `from` |
| `toValue` | `to` |

### `CALayer`

| Original | New |
|:--|:--|
| `allowsEdgeAntialiasing` | `edgeAntialiasable` |
| `masksToBounds` | `masks` |
| `shouldRasterize` | `rasterized` |
