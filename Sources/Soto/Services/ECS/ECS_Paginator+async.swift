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
extension ECS {
    ///  Lists the account settings for a specified principal.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountSettingsPaginator(
        _ input: ListAccountSettingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountSettingsRequest, ListAccountSettingsResponse> {
        return .init(
            input: input,
            command: listAccountSettings,
            inputKey: \ListAccountSettingsRequest.nextToken,
            outputKey: \ListAccountSettingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the attributes for Amazon ECS resources within a specified target type and cluster.
    ///  			When you specify a target type and cluster, ListAttributes returns a list
    ///  			of attribute objects, one for each attribute on each resource. You can filter the list
    ///  			of results to a single attribute name to only return results that have that name. You
    ///  			can also filter the results by attribute name and value. You can do this, for example,
    ///  			to see which container instances in a cluster are running a Linux AMI
    ///  				(ecs.os-type=linux).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttributesPaginator(
        _ input: ListAttributesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttributesRequest, ListAttributesResponse> {
        return .init(
            input: input,
            command: listAttributes,
            inputKey: \ListAttributesRequest.nextToken,
            outputKey: \ListAttributesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing clusters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClustersRequest, ListClustersResponse> {
        return .init(
            input: input,
            command: listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of container instances in a specified cluster. You can filter the
    ///  			results of a ListContainerInstances operation with cluster query language
    ///  			statements inside the filter parameter. For more information, see Cluster Query Language in the
    ///  				Amazon Elastic Container Service Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContainerInstancesPaginator(
        _ input: ListContainerInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContainerInstancesRequest, ListContainerInstancesResponse> {
        return .init(
            input: input,
            command: listContainerInstances,
            inputKey: \ListContainerInstancesRequest.nextToken,
            outputKey: \ListContainerInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of services. You can filter the results by cluster, launch type, and
    ///  			scheduling strategy.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of task definition families that are registered to your account. This
    ///  			list includes task definition families that no longer have any ACTIVE task
    ///  			definition revisions.
    ///  		       You can filter out task definition families that don't contain any ACTIVE
    ///  			task definition revisions by setting the status parameter to
    ///  				ACTIVE. You can also filter the results with the
    ///  				familyPrefix parameter.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTaskDefinitionFamiliesPaginator(
        _ input: ListTaskDefinitionFamiliesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTaskDefinitionFamiliesRequest, ListTaskDefinitionFamiliesResponse> {
        return .init(
            input: input,
            command: listTaskDefinitionFamilies,
            inputKey: \ListTaskDefinitionFamiliesRequest.nextToken,
            outputKey: \ListTaskDefinitionFamiliesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of task definitions that are registered to your account. You can filter
    ///  			the results by family name with the familyPrefix parameter or by status
    ///  			with the status parameter.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTaskDefinitionsPaginator(
        _ input: ListTaskDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTaskDefinitionsRequest, ListTaskDefinitionsResponse> {
        return .init(
            input: input,
            command: listTaskDefinitions,
            inputKey: \ListTaskDefinitionsRequest.nextToken,
            outputKey: \ListTaskDefinitionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of tasks. You can filter the results by cluster, task definition
    ///  			family, container instance, launch type, what IAM principal started the task, or by the
    ///  			desired status of the task.
    ///  		       Recently stopped tasks might appear in the returned results. Currently, stopped tasks
    ///  			appear in the returned results for at least one hour.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTasksPaginator(
        _ input: ListTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTasksRequest, ListTasksResponse> {
        return .init(
            input: input,
            command: listTasks,
            inputKey: \ListTasksRequest.nextToken,
            outputKey: \ListTasksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
