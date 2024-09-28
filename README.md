
# Tabbar Live OS

It is not possible to add gifs to tabbar with normal UIkit due to its structure. You can easily add it with this library.

## Installation: SPM

 Swift Package Manager (SwiftPM) is a tool for managing the distribution of Swift code as well as C-family dependency. From Xcode 11, SwiftPM got natively integrated with Xcode.

 If you're a framework author and use Tabbar Live OS as a dependency, update your Package.swift file:

```bash
  let package = Package(
    // 5.1.0 
    dependencies: [
        .package(url: "https://github.com/omersai/TabBar-Live-OS.git", from: "1.0.0")
    ],
    // ...
)
```


## Example

Import the project.
Add any gif you want to use to your project.

```bash
  import TabBar_Live_OS

  class TabbarViewController: UITabBarController {
    
    let tabBarLiveOS = TabBarLiveOS()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarLiveOS.setupGifAnimation(tabBarView: self, gifName: "yourGifName", tabIndex: 1)
    }
}
```
![App Screenshot](https://github.com/omersai/TabBar-Live-OS/blob/main/Screen.gif?raw=true)

And that's it, happy ending :)


## More Settings

You can give the following parameters to the setupGifAnimation method.
| Properties             | Value                                                                |
| ----------------- | ------------------------------------------------------------------ |
| gifSize | CGFloat |
| gifSpeed | TimeInterval|
| tabIndex | Int|




## License

[GPL](https://www.gnu.org/licenses/)


## Used By

Created By Ömer SAİTOĞLU

