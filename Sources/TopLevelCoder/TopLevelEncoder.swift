//
//  TopLevelEncoder.swift
//
//
//  Created by Jaehong Kang on 2022/12/13.
//

#if canImport(Combine)
import Combine

#if swift(>=5.5)
public protocol TopLevelEncoder<Output>: Combine.TopLevelEncoder {
    /// The type this encoder produces.
    associatedtype Output

    /// Encodes an instance of the indicated type.
    ///
    /// - Parameter value: The instance to encode.
    func encode<T>(_ value: T) throws -> Self.Output where T: Encodable
}
#else
public protocol TopLevelEncoder: Combine.TopLevelEncoder {
    /// The type this encoder produces.
    associatedtype Output

    /// Encodes an instance of the indicated type.
    ///
    /// - Parameter value: The instance to encode.
    func encode<T>(_ value: T) throws -> Self.Output where T: Encodable
}
#endif

#else

#if swift(>=5.5)
public protocol TopLevelEncoder<Output> {
    /// The type this encoder produces.
    associatedtype Output

    /// Encodes an instance of the indicated type.
    ///
    /// - Parameter value: The instance to encode.
    func encode<T>(_ value: T) throws -> Self.Output where T: Encodable
}
#else
public protocol TopLevelEncoder {
    /// The type this encoder produces.
    associatedtype Output

    /// Encodes an instance of the indicated type.
    ///
    /// - Parameter value: The instance to encode.
    func encode<T>(_ value: T) throws -> Self.Output where T: Encodable
}
#endif

#endif
