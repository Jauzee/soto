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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension WorkSpaces {
    ///  Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeWorkspaceBundlesPaginator(
        _ input: DescribeWorkspaceBundlesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeWorkspaceBundlesRequest, DescribeWorkspaceBundlesResult> {
        return .init(
            input: input,
            command: describeWorkspaceBundles,
            inputKey: \DescribeWorkspaceBundlesRequest.nextToken,
            outputKey: \DescribeWorkspaceBundlesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the available directories that are registered with Amazon WorkSpaces.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeWorkspaceDirectoriesPaginator(
        _ input: DescribeWorkspaceDirectoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeWorkspaceDirectoriesRequest, DescribeWorkspaceDirectoriesResult> {
        return .init(
            input: input,
            command: describeWorkspaceDirectories,
            inputKey: \DescribeWorkspaceDirectoriesRequest.nextToken,
            outputKey: \DescribeWorkspaceDirectoriesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeWorkspacesPaginator(
        _ input: DescribeWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeWorkspacesRequest, DescribeWorkspacesResult> {
        return .init(
            input: input,
            command: describeWorkspaces,
            inputKey: \DescribeWorkspacesRequest.nextToken,
            outputKey: \DescribeWorkspacesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
