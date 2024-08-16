// swift-tools-version:6.0
import PackageDescription

let package = Package(
	name: "DewdropService",
	platforms: [
		.iOS(.v15),
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
        .package(url: "https://github.com/Fleuronic/Catena", branch: "main")
	],
	targets: [
		.target(
			name: "DewdropService",
			dependencies: [
				"Dewdrop",
				"Catena"
			]
		)
	],
	swiftLanguageModes: [.v6]
)
