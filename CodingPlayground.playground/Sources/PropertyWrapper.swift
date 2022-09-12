import Foundation

@propertyWrapper
public struct SampleFile {

    let fileName: String

    public var wrappedValue: URL {
        let file = fileName.split(separator: ".").first!
        let fileExtension = fileName.split(separator: ".").last!
        let url = Bundle.main.url(forResource: String(file), withExtension: String(fileExtension))!
        return url
    }

    public var projectedValue: String {
        return fileName
    }
}

public struct SampleFiles {
    @SampleFile(fileName: "sample-image.png")
    public static var image: URL
}
