# Cooking

    Cook classes/structs with the taste you love.
    Naming your extensions in the Swifty way people love.

`extension` of Swift is powerful. We can extend not only our own `class`/`struct`, but also any frameworks' `class`/`struct`.

Well, function naming conflict is a common issue in `extension`. People were using `xxx_` prefix to deal with that. Now people are using a smarter, cleaner and finally Swifter approach.

Framework | Was | Now
---|---|---
RxSwift | `label.rx_text` | `label.rx.text`
SnapKit | `view.snp_makeConstraints` | `view.snp.makeConstraints`

**Cooking** is the library help you adopt this Swifty way to name `extension`.

## Usage
Either `class` or `struct` has to conform to `Edible` protocol to have the wrapper with `.cook`.

Then extend `Cooking` with `where` constraint to extend your `class` or `struct`. You will have to use `ingredient` to refer the instance instead of using `self`.

For `class`, the constraint can use either `==` or `:`.  
For `struct`, the constraint has to use `==`.

```swift
import Cooking

extension String: Edible {}
//  Use `==` for structs.
extension Cooking where Ingredient == String {

	static func bitterOne() -> String {
		return "😭😭😭"
	}

	func sweeten() -> String {
		return ingredient.replacingOccurrences(of: "😭", with: "😋")
	}
}

let bitterString = String.cook.bitterOne()
//  bitterString = "😭😭😭"
let sweetString  = bitterString.cook.sweeten()
//  sweetString  = "😋😋😋"

extension UIView: Edible {}
extension Cooking where Ingredient: UIView {
	func area() -> CGFloat {
		return ingredient.frame.width * ingredient.frame.height
	}
}

let view = UIView(frame: .init(origin: .zero, size: .init(width: 50, height: 20)))
let area = view.cook.area()
//  area = 1000
```

## Installation

### CocoaPods

CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:

```shell
$ gem install cocoapods
```

To use Cooking in your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
pod 'Cooking'
```

Then, run the following command:

```shell
$ pod install
```

### Swift Package Manager

Add this project as a dependency in your Package.swift file.

```swift
.Package(url: "https://github.com/ShaneQi/Cooking.git", majorVersion: 1, minor: 0)
```

### Manually

Include file `Sources/Cooking.swift` in your project.

## Licensing

Apache-2.0
