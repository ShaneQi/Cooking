// swift-tools-version:5.0
                               
import PackageDescription      

let package = Package(         
        name: "Cooking", 
        products: [            
                .library(
                        name: "Cooking", 
                        targets: ["Cooking"])
        ],
        targets: [
                .target(
                        name: "Cooking",
                        dependencies: [],       
                        path: "./Sources")              
                ],
        swiftLanguageVersions: [.v5] 
)
