// swift-tools-version:5.9
import PackageDescription

let package = Package(
	name: "DewdropService",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
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
		.package(url: "https://github.com/Fleuronic/Dewdrop", branch: "main"),
		.package(url: "https://github.com/JohnSundell/Identity", from: "0.1.0"),
		.package(url: "https://github.com/Fleuronic/Catenary", branch: "main"),
		.package(url: "https://github.com/Fleuronic/Catenoid", branch: "main"),
	],
	targets: [
		.target(
			name: "DewdropService",
			dependencies: [
				"Dewdrop",
				"Identity",
				"Catenary",
				"Catenoid",
			]
		),
	]
)
