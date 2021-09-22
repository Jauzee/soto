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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension TimestreamQuery {
    // MARK: Async API Calls

    ///  Cancels a query that has been issued. Cancellation is guaranteed only if the query has not completed execution before the cancellation request was issued. Because cancellation is an idempotent operation, subsequent cancellation requests will return a CancellationMessage, indicating that the query has already been canceled.
    public func cancelQuery(_ input: CancelQueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelQueryResponse {
        return try await self.client.execute(operation: "CancelQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger, on: eventLoop)
    }

    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because Timestream’s SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, it is not recommended that you use this API unless:   Your application uses a programming language that does not yet have SDK support   You require better control over the client-side implementation   For detailed information on how to use DescribeEndpoints, see The Endpoint Discovery Pattern and REST APIs.
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndpointsResponse {
        return try await self.client.execute(operation: "DescribeEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Query is a synchronous operation that enables you to execute a query. Query will timeout after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB. Service quotas apply. For more information, see Quotas in the Timestream Developer Guide.
    public func query(_ input: QueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResponse {
        return try await self.client.execute(operation: "Query", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)