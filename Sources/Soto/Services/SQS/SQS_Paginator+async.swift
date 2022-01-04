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
extension SQS {
    ///  Returns a list of your queues that have the RedrivePolicy queue attribute configured with a dead-letter queue.    The ListDeadLetterSourceQueues methods supports pagination. Set parameter MaxResults in the request to specify the maximum number of results to be returned in the response. If you do not set MaxResults, the response includes a maximum of 1,000 results. If you set MaxResults and there are additional results to display, the response includes a value for NextToken. Use NextToken as a parameter in your next request to ListDeadLetterSourceQueues to receive the next page of results.      For more information about using dead-letter queues, see Using Amazon SQS Dead-Letter Queues  in the Amazon SQS Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeadLetterSourceQueuesPaginator(
        _ input: ListDeadLetterSourceQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeadLetterSourceQueuesRequest, ListDeadLetterSourceQueuesResult> {
        return .init(
            input: input,
            command: listDeadLetterSourceQueues,
            inputKey: \ListDeadLetterSourceQueuesRequest.nextToken,
            outputKey: \ListDeadLetterSourceQueuesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of your queues in the current region. The response includes a maximum of 1,000 results. If you specify a value for the optional  QueueNamePrefix parameter, only queues with a name that begins with the specified value are returned. The listQueues methods supports pagination. Set parameter MaxResults in the request to specify the maximum number of results to be returned in the response. If you do not set MaxResults, the response includes a maximum of 1,000 results. If you set MaxResults and there are additional results to display, the response includes a value for NextToken. Use NextToken as a parameter in your next request to listQueues to receive the next page of results.    Cross-account permissions don't apply to this action. For more information,
    ///  see Grant
    ///  cross-account permissions to a role and a user name in the Amazon SQS Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueuesRequest, ListQueuesResult> {
        return .init(
            input: input,
            command: listQueues,
            inputKey: \ListQueuesRequest.nextToken,
            outputKey: \ListQueuesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
