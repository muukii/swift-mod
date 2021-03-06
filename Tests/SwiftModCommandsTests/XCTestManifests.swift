#if !canImport(ObjectiveC)
import XCTest

extension ConfigurationCodableTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ConfigurationCodableTests = [
        ("testNilFormatCodable", testNilFormatCodable),
        ("testTabFormatCodable", testTabFormatCodable),
        ("testTemplateCodable", testTemplateCodable),
    ]
}

extension InitCommandTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InitCommandTests = [
        ("testArguments", testArguments),
        ("testRun", testRun),
    ]
}

extension RulesCommandTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RulesCommandTests = [
        ("testArguments", testArguments),
        ("testRun", testRun),
        ("testRunWithDetail", testRunWithDetail),
    ]
}

extension RunCommandTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RunCommandTests = [
        ("testArguments", testArguments),
        ("testRun", testRun),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ConfigurationCodableTests.__allTests__ConfigurationCodableTests),
        testCase(InitCommandTests.__allTests__InitCommandTests),
        testCase(RulesCommandTests.__allTests__RulesCommandTests),
        testCase(RunCommandTests.__allTests__RunCommandTests),
    ]
}
#endif
