// swift-tools-version:5.10
import PackageDescription

let package = Package(
	name: "DewdropService",
	platforms: [
		.iOS(.v13),
		.macOS(.v12),
		.tvOS(.v13),
		.watchOS(.v6),
	],
	products: [
		.library(
			name: "DewdropService",
			targets: ["DewdropService"]
		),
	],
	dependencies: [
		.package(path: "../.."),
		.package(url: "https://github.com/JohnSundell/Identity", from: "0.1.0")
	],
	targets: [
		.target(
			name: "DewdropService",
			dependencies: [
				"Dewdrop",
				"Identity"
			]
		),
	]
)
