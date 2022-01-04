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
extension Resiliencehub {
    ///  Lists the alarm recommendations for a AWS Resilience Hub application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAlarmRecommendationsPaginator(
        _ input: ListAlarmRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAlarmRecommendationsRequest, ListAlarmRecommendationsResponse> {
        return .init(
            input: input,
            command: listAlarmRecommendations,
            inputKey: \ListAlarmRecommendationsRequest.nextToken,
            outputKey: \ListAlarmRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the assessments for an AWS Resilience Hub application. You can use request parameters to refine the results for the response object.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppAssessmentsPaginator(
        _ input: ListAppAssessmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppAssessmentsRequest, ListAppAssessmentsResponse> {
        return .init(
            input: input,
            command: listAppAssessments,
            inputKey: \ListAppAssessmentsRequest.nextToken,
            outputKey: \ListAppAssessmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the compliances for an AWS Resilience Hub component.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppComponentCompliancesPaginator(
        _ input: ListAppComponentCompliancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppComponentCompliancesRequest, ListAppComponentCompliancesResponse> {
        return .init(
            input: input,
            command: listAppComponentCompliances,
            inputKey: \ListAppComponentCompliancesRequest.nextToken,
            outputKey: \ListAppComponentCompliancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the recommendations for an AWS Resilience Hub component.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppComponentRecommendationsPaginator(
        _ input: ListAppComponentRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppComponentRecommendationsRequest, ListAppComponentRecommendationsResponse> {
        return .init(
            input: input,
            command: listAppComponentRecommendations,
            inputKey: \ListAppComponentRecommendationsRequest.nextToken,
            outputKey: \ListAppComponentRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists how the resources in an application version are mapped/sourced from. Mappings can be physical resource identifiers, CloudFormation stacks, resource-groups, or an application registry app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppVersionResourceMappingsPaginator(
        _ input: ListAppVersionResourceMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppVersionResourceMappingsRequest, ListAppVersionResourceMappingsResponse> {
        return .init(
            input: input,
            command: listAppVersionResourceMappings,
            inputKey: \ListAppVersionResourceMappingsRequest.nextToken,
            outputKey: \ListAppVersionResourceMappingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the resources in an application version.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppVersionResourcesPaginator(
        _ input: ListAppVersionResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppVersionResourcesRequest, ListAppVersionResourcesResponse> {
        return .init(
            input: input,
            command: listAppVersionResources,
            inputKey: \ListAppVersionResourcesRequest.nextToken,
            outputKey: \ListAppVersionResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the different versions for the Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppVersionsPaginator(
        _ input: ListAppVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppVersionsRequest, ListAppVersionsResponse> {
        return .init(
            input: input,
            command: listAppVersions,
            inputKey: \ListAppVersionsRequest.nextToken,
            outputKey: \ListAppVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists your Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppsPaginator(
        _ input: ListAppsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppsRequest, ListAppsResponse> {
        return .init(
            input: input,
            command: listApps,
            inputKey: \ListAppsRequest.nextToken,
            outputKey: \ListAppsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the recommendation templates for the Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationTemplatesPaginator(
        _ input: ListRecommendationTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationTemplatesRequest, ListRecommendationTemplatesResponse> {
        return .init(
            input: input,
            command: listRecommendationTemplates,
            inputKey: \ListRecommendationTemplatesRequest.nextToken,
            outputKey: \ListRecommendationTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resiliency policies for the Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResiliencyPoliciesPaginator(
        _ input: ListResiliencyPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResiliencyPoliciesRequest, ListResiliencyPoliciesResponse> {
        return .init(
            input: input,
            command: listResiliencyPolicies,
            inputKey: \ListResiliencyPoliciesRequest.nextToken,
            outputKey: \ListResiliencyPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the standard operating procedure (SOP) recommendations for the Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSopRecommendationsPaginator(
        _ input: ListSopRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSopRecommendationsRequest, ListSopRecommendationsResponse> {
        return .init(
            input: input,
            command: listSopRecommendations,
            inputKey: \ListSopRecommendationsRequest.nextToken,
            outputKey: \ListSopRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the suggested resiliency policies for the Resilience Hub applications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSuggestedResiliencyPoliciesPaginator(
        _ input: ListSuggestedResiliencyPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSuggestedResiliencyPoliciesRequest, ListSuggestedResiliencyPoliciesResponse> {
        return .init(
            input: input,
            command: listSuggestedResiliencyPolicies,
            inputKey: \ListSuggestedResiliencyPoliciesRequest.nextToken,
            outputKey: \ListSuggestedResiliencyPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the test recommendations for the Resilience Hub application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestRecommendationsPaginator(
        _ input: ListTestRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestRecommendationsRequest, ListTestRecommendationsResponse> {
        return .init(
            input: input,
            command: listTestRecommendations,
            inputKey: \ListTestRecommendationsRequest.nextToken,
            outputKey: \ListTestRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resources that are not currently supported in AWS Resilience Hub. An unsupported resource is a resource that exists in the object that was used to create an app, but is not supported by Resilience Hub.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUnsupportedAppVersionResourcesPaginator(
        _ input: ListUnsupportedAppVersionResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUnsupportedAppVersionResourcesRequest, ListUnsupportedAppVersionResourcesResponse> {
        return .init(
            input: input,
            command: listUnsupportedAppVersionResources,
            inputKey: \ListUnsupportedAppVersionResourcesRequest.nextToken,
            outputKey: \ListUnsupportedAppVersionResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
