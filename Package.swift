// swift-tools-version:6.0
import PackageDescription

let package = Package(
	name: "DewdropService",
	platforms: [
		.iOS(.v15),
		.macOS(.v12),
		.tvOS(.v15),
		.watchOS(.v8)
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
	],
	swiftLanguageModes: [.v6]
)

for target in package.targets {
	target.swiftSettings = [
		.enableUpcomingFeature("ExistentialAny"),
		.enableUpcomingFeature("InternalImportsByDefault")
	]
}
