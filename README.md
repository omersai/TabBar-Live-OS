
# Tabbar Live OS

It is not possible to add gifs to tabbar with normal UIkit due to its structure. You can easily add it with this library.

## Installation: SPM

 Swift Package Manager (SwiftPM) is a tool for managing the distribution of Swift code as well as C-family dependency. From Xcode 11, SwiftPM got natively integrated with Xcode.

 If you're a framework author and use Tabbar Live OS as a dependency, update your Package.swift file:

```bash
  let package = Package(
    // 1.2.3 
    dependencies: [
        .package(url: "https://github.com/omersai/TabBar-Live-OS.git", from: "1.2.3")
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
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TABOS.tabAnimation(tabController: self, gifName: "yourGifName", tabIndex: 1)
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


## Possible Error Messages and Solutions
If the GIF does not work in the TabBar, you can make the necessary adjustments by using the error messages in the Xcode console screen below.
- “Error: GIF file could not be opened.”
    
    Solution: The file extension may not be .gif, or the file name may be different.
- “GIF could not be loaded.”
    
    Solution: The file name may be different. Please check the file name.
- “Tab bar item view not found.”
    
    Solution: A tab bar may not be added to the project.

## License

[GPL](https://www.gnu.org/licenses/)


## Used By

Created By Ömer SAİTOĞLU

