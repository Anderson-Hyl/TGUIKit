// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TGUIKit",
    platforms: [.macOS(.v10_13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Components",
            targets: ["Components"]),
        .library(
            name: "Colors",
            targets: ["Colors"],
        ),
        .library(
            name: "Strings",
            targets: ["Strings"],
        ),
        .library(
            name: "ColorPalette",
            targets: ["ColorPalette"],
        ),
        .library(
            name: "ObjcUtils",
            targets: ["ObjcUtils"]
        ),
        .library(
            name: "MergeLists",
            targets: ["MergeLists"]
        ),
        .library(
            name: "KeyboardKey",
            targets: ["KeyboardKey"]
        ),
        .library(
            name: "SwiftSignalKit",
            targets: ["SwiftSignalKit"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//        .package(name: "SSignalKit", path: "../../submodules/telegram-ios/submodules/SSignalKit"),
//        .package(name: "ColorPalette", path: "../ColorPalette"),
//        .package(name: "KeyboardKey", path: "../KeyboardKey"),
//        .package(name: "ObjcUtils", path: "../ObjcUtils"),
//        .package(name: "MergeLists", path: "../MergeLists"),
        
    ],
    targets: [
        .target(
            name: "Colors",
            dependencies: [
               "Strings",
            ],
        ),
        .target(
            name: "Strings",
        ),
        .target(
            name: "ColorPalette",
            dependencies: [
               "Colors",
            ],
        ),
        .target(
            name: "ObjcUtils",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include")
            ]
        ),
        .target(
            name: "MergeLists",
        ),
        .target(
            name: "KeyboardKey",
        ),
        .target(
            name: "SwiftSignalKit",
        ),
        .target(
            name: "Components",
            dependencies: [
                "ColorPalette",
                "MergeLists",
                "ObjcUtils",
                "SwiftSignalKit"
            ]
        )
    ]
)
