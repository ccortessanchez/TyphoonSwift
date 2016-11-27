import PackageDescription

let package = Package(
    name: "Commandant",
    dependencies: {
        #if os(macOS)
            return [
                .Package(url: "https://github.com/antitypical/Result.git", majorVersion: 3, minor: 0),
            ]
        #else
            return [
                .Package(url: "https://github.com/antitypical/Result.git", majorVersion: 3, minor: 0),
                .Package(url: "https://github.com/Quick/Quick", majorVersion: 0, minor: 10),
            ]
        #endif
    }()
)
