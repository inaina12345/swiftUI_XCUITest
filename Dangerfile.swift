// Dangerfile.swift

import Danger
import DangerXCodeSummary // package: https://github.com/f-meloni/danger-swift-xcodesummary.git

let danger = Danger()
// テストカバレッジを確認
//import DangerSwiftCoverage // package: https://github.com/f-meloni/danger-swift-coverage.git
//Coverage.xcodeBuildCoverage(.xcresultBundle("Test.xcresult"), minimumCoverage: 60)
// Changelog 編集状況確認
if !danger.git.modifiedFiles.contains(where: { $0 == "CHANGELOG.md" }) {
danger.warn("CHANGELOG を編集してください。")
}
// SwiftLint ワーニングを確認
//SwiftLint.lint()
// 修正量を確認
let additions = danger.github.pullRequest.additions ?? 0
let deletions = danger.github.pullRequest.deletions ?? 0
//if additions + deletions > 1_000 {
if additions + deletions > 2 {
danger.warn("修正量が多すぎです。PR を小さく分割してください。")
}


// You can use these functions to send feedback:
//message("Highlight something in the table")
//warn("Something pretty bad, but not important enough to fail the build")
//fail("Something that must be changed")

//markdown("Free-form markdown that goes under the table, so you can do whatever.")

//let summary = XCodeSummary(filePath: "result.json")
// Xcode summary warnings check.
XCodeSummary(filePath: "result.json", onlyShowSummaryInDiffFiles: true).report()
//summary.report()
