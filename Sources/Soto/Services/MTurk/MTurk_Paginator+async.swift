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
extension MTurk {
    ///   The ListAssignmentsForHIT operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.  You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.  Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.  Only the Requester who created the HIT can retrieve the assignments for that HIT.  Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssignmentsForHITPaginator(
        _ input: ListAssignmentsForHITRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssignmentsForHITRequest, ListAssignmentsForHITResponse> {
        return .init(
            input: input,
            command: listAssignmentsForHIT,
            inputKey: \ListAssignmentsForHITRequest.nextToken,
            outputKey: \ListAssignmentsForHITResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBonusPaymentsPaginator(
        _ input: ListBonusPaymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBonusPaymentsRequest, ListBonusPaymentsResponse> {
        return .init(
            input: input,
            command: listBonusPayments,
            inputKey: \ListBonusPaymentsRequest.nextToken,
            outputKey: \ListBonusPaymentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListHITs operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHITsPaginator(
        _ input: ListHITsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHITsRequest, ListHITsResponse> {
        return .init(
            input: input,
            command: listHITs,
            inputKey: \ListHITsRequest.nextToken,
            outputKey: \ListHITsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the DeleteHIT operation or that have been auto-deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHITsForQualificationTypePaginator(
        _ input: ListHITsForQualificationTypeRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHITsForQualificationTypeRequest, ListHITsForQualificationTypeResponse> {
        return .init(
            input: input,
            command: listHITsForQualificationType,
            inputKey: \ListHITsForQualificationTypeRequest.nextToken,
            outputKey: \ListHITsForQualificationTypeResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQualificationRequestsPaginator(
        _ input: ListQualificationRequestsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQualificationRequestsRequest, ListQualificationRequestsResponse> {
        return .init(
            input: input,
            command: listQualificationRequests,
            inputKey: \ListQualificationRequestsRequest.nextToken,
            outputKey: \ListQualificationRequestsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQualificationTypesPaginator(
        _ input: ListQualificationTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQualificationTypesRequest, ListQualificationTypesResponse> {
        return .init(
            input: input,
            command: listQualificationTypes,
            inputKey: \ListQualificationTypesRequest.nextToken,
            outputKey: \ListQualificationTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReviewPolicyResultsForHITPaginator(
        _ input: ListReviewPolicyResultsForHITRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReviewPolicyResultsForHITRequest, ListReviewPolicyResultsForHITResponse> {
        return .init(
            input: input,
            command: listReviewPolicyResultsForHIT,
            inputKey: \ListReviewPolicyResultsForHITRequest.nextToken,
            outputKey: \ListReviewPolicyResultsForHITResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReviewableHITsPaginator(
        _ input: ListReviewableHITsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReviewableHITsRequest, ListReviewableHITsResponse> {
        return .init(
            input: input,
            command: listReviewableHITs,
            inputKey: \ListReviewableHITsRequest.nextToken,
            outputKey: \ListReviewableHITsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkerBlocksPaginator(
        _ input: ListWorkerBlocksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkerBlocksRequest, ListWorkerBlocksResponse> {
        return .init(
            input: input,
            command: listWorkerBlocks,
            inputKey: \ListWorkerBlocksRequest.nextToken,
            outputKey: \ListWorkerBlocksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkersWithQualificationTypePaginator(
        _ input: ListWorkersWithQualificationTypeRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkersWithQualificationTypeRequest, ListWorkersWithQualificationTypeResponse> {
        return .init(
            input: input,
            command: listWorkersWithQualificationType,
            inputKey: \ListWorkersWithQualificationTypeRequest.nextToken,
            outputKey: \ListWorkersWithQualificationTypeResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
