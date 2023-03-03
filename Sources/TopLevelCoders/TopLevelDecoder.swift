//
//  TopLevelDecoder.swift
//
//
//  Created by Jaehong Kang on 2022/12/13.
//

#if canImport(Combine)
import Combine
#endif

#if swift(>=5.7)

#if canImport(Combine)
public protocol TopLevelDecoder<Input>: Combine.TopLevelDecoder {
    /// The type this decoder accepts.
    associatedtype Input

    /// Decodes an instance of the indicated type.
    func decode<T>(_ type: T.Type, from: Self.Input) throws -> T where T: Decodable
}
#else
public protocol TopLevelDecoder<Input> {
    /// The type this decoder accepts.
    associatedtype Input

    /// Decodes an instance of the indicated type.
    func decode<T>(_ type: T.Type, from: Self.Input) throws -> T where T: Decodable
}
#endif

#else

#if canImport(Combine)
public protocol TopLevelDecoder: Combine.TopLevelDecoder {
    /// The type this decoder accepts.
    associatedtype Input

    /// Decodes an instance of the indicated type.
    func decode<T>(_ type: T.Type, from: Self.Input) throws -> T where T: Decodable
}
#else
public protocol TopLevelDecoder {
    /// The type this decoder accepts.
    associatedtype Input

    /// Decodes an instance of the indicated type.
    func decode<T>(_ type: T.Type, from: Self.Input) throws -> T where T: Decodable
}
#endif

#endif
