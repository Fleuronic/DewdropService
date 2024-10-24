// swift-tools-version:5.8
import PackageDescription

let package = Package(
	name: "DewdropService",
	platforms: [
		.iOS(.v14),
		.macOS(.v11),
		.tvOS(.v14),
		.watchOS(.v7)
	],
	products: [
		.library(
			name: "DewdropService",
			targets: ["DewdropService"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/Fleuronic/Dewdrop", branch: "main"),
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
	]
)

for target in package.targets {
	target.swiftSettings = [
		.enableUpcomingFeature("StrictConcurrency"),
		.enableExperimentalFeature("AccessLevelOnImport")
	]
}
