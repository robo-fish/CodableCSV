// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "CodableCSV",
  platforms: [
    .macOS(.v14), .iOS(.v17), .tvOS(.v17), .watchOS(.v10)
  ],
  products: [
    .library(name: "CodableCSV", targets: ["CodableCSV"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "CodableCSV", dependencies: [], path: "sources"),
    .testTarget(name: "CodableCSVTests", dependencies: ["CodableCSV"], path: "tests"),
    .testTarget(name: "CodableCSVBenchmarks", dependencies: ["CodableCSV"], path: "benchmarks")
  ]
)
