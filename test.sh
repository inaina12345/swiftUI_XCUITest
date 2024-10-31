xcodebuild \
-project swiftUI_XCUITest.xcodeproj \
-scheme swiftUI_XCUITest build \
-destination platform="iOS Simulator,name=iPhone 15" \
OTHER_SWIFT_FLAGS="-Xfrontend -warn-long-function-bodies=100" -showBuildTimingSummary | tee build.log
