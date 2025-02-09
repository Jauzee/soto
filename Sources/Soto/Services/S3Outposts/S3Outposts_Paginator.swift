//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension S3Outposts {
    ///  Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your  virtual private cloud (VPC). For more information, see  Accessing S3 on Outposts using VPC only access points. This action lists endpoints associated with the Outposts.   Related actions include:    CreateEndpoint     DeleteEndpoint
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEndpointsPaginator<Result>(
        _ input: ListEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEndpointsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEndpointsPaginator(
        _ input: ListEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEndpointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension S3Outposts.ListEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
