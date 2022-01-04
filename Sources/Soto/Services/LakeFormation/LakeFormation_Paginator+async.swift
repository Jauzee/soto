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
extension LakeFormation {
    ///  Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getEffectivePermissionsForPathPaginator(
        _ input: GetEffectivePermissionsForPathRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetEffectivePermissionsForPathRequest, GetEffectivePermissionsForPathResponse> {
        return .init(
            input: input,
            command: getEffectivePermissionsForPath,
            inputKey: \GetEffectivePermissionsForPathRequest.nextToken,
            outputKey: \GetEffectivePermissionsForPathResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTableObjectsPaginator(
        _ input: GetTableObjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTableObjectsRequest, GetTableObjectsResponse> {
        return .init(
            input: input,
            command: getTableObjects,
            inputKey: \GetTableObjectsRequest.nextToken,
            outputKey: \GetTableObjectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the work units generated by the StartQueryPlanning operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getWorkUnitsPaginator(
        _ input: GetWorkUnitsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetWorkUnitsRequest, GetWorkUnitsResponse> {
        return .init(
            input: input,
            command: getWorkUnits,
            inputKey: \GetWorkUnitsRequest.nextToken,
            outputKey: \GetWorkUnitsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the data cell filters on a table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataCellsFilterPaginator(
        _ input: ListDataCellsFilterRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataCellsFilterRequest, ListDataCellsFilterResponse> {
        return .init(
            input: input,
            command: listDataCellsFilter,
            inputKey: \ListDataCellsFilterRequest.nextToken,
            outputKey: \ListDataCellsFilterResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists LF-tags that the requester has permission to view.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLFTagsPaginator(
        _ input: ListLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLFTagsRequest, ListLFTagsResponse> {
        return .init(
            input: input,
            command: listLFTags,
            inputKey: \ListLFTagsRequest.nextToken,
            outputKey: \ListLFTagsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER.
    ///  	        This operation returns only those permissions that have been explicitly granted.
    ///  	        For information about permissions, see Security and Access Control to Metadata and Data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionsPaginator(
        _ input: ListPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionsRequest, ListPermissionsResponse> {
        return .init(
            input: input,
            command: listPermissions,
            inputKey: \ListPermissionsRequest.nextToken,
            outputKey: \ListPermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resources registered to be managed by the Data Catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourcesRequest, ListResourcesResponse> {
        return .init(
            input: input,
            command: listResources,
            inputKey: \ListResourcesRequest.nextToken,
            outputKey: \ListResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the configuration of all storage optimizers associated with a specified table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTableStorageOptimizersPaginator(
        _ input: ListTableStorageOptimizersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTableStorageOptimizersRequest, ListTableStorageOptimizersResponse> {
        return .init(
            input: input,
            command: listTableStorageOptimizers,
            inputKey: \ListTableStorageOptimizersRequest.nextToken,
            outputKey: \ListTableStorageOptimizersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned.
    ///  	        This operation can help you identify uncommitted transactions or to get information about transactions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTransactionsPaginator(
        _ input: ListTransactionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTransactionsRequest, ListTransactionsResponse> {
        return .init(
            input: input,
            command: listTransactions,
            inputKey: \ListTransactionsRequest.nextToken,
            outputKey: \ListTransactionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation allows a search on DATABASE resources by TagCondition. This operation is used by admins who want to grant user permissions on certain TagConditions. Before making a grant, the admin can use SearchDatabasesByTags to find all resources where the given TagConditions are valid to verify whether the returned resources can be shared.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchDatabasesByLFTagsPaginator(
        _ input: SearchDatabasesByLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchDatabasesByLFTagsRequest, SearchDatabasesByLFTagsResponse> {
        return .init(
            input: input,
            command: searchDatabasesByLFTags,
            inputKey: \SearchDatabasesByLFTagsRequest.nextToken,
            outputKey: \SearchDatabasesByLFTagsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation allows a search on TABLE resources by LFTags. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use SearchTablesByLFTags to find all resources where the given LFTags are valid to verify whether the returned resources can be shared.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchTablesByLFTagsPaginator(
        _ input: SearchTablesByLFTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchTablesByLFTagsRequest, SearchTablesByLFTagsResponse> {
        return .init(
            input: input,
            command: searchTablesByLFTags,
            inputKey: \SearchTablesByLFTagsRequest.nextToken,
            outputKey: \SearchTablesByLFTagsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
