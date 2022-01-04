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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension FinspaceData {
    // MARK: Async API Calls

    /// Creates a new Changeset in a FinSpace Dataset.
    public func createChangeset(_ input: CreateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChangesetResponse {
        return try await self.client.execute(operation: "CreateChangeset", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Dataview for a Dataset.
    public func createDataView(_ input: CreateDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataViewResponse {
        return try await self.client.execute(operation: "CreateDataView", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new FinSpace Dataset.
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        return try await self.client.execute(operation: "CreateDataset", path: "/datasetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a FinSpace Dataset.
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatasetResponse {
        return try await self.client.execute(operation: "DeleteDataset", path: "/datasetsv2/{datasetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about a Changeset.
    public func getChangeset(_ input: GetChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChangesetResponse {
        return try await self.client.execute(operation: "GetChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Dataview.
    public func getDataView(_ input: GetDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataViewResponse {
        return try await self.client.execute(operation: "GetDataView", path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Dataset.
    public func getDataset(_ input: GetDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatasetResponse {
        return try await self.client.execute(operation: "GetDataset", path: "/datasetsv2/{datasetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Request programmatic credentials to use with FinSpace SDK.
    public func getProgrammaticAccessCredentials(_ input: GetProgrammaticAccessCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProgrammaticAccessCredentialsResponse {
        return try await self.client.execute(operation: "GetProgrammaticAccessCredentials", path: "/credentials/programmatic", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook.
    public func getWorkingLocation(_ input: GetWorkingLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkingLocationResponse {
        return try await self.client.execute(operation: "GetWorkingLocation", path: "/workingLocationV1", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the FinSpace Changesets for a Dataset.
    public func listChangesets(_ input: ListChangesetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChangesetsResponse {
        return try await self.client.execute(operation: "ListChangesets", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available Dataviews for a Dataset.
    public func listDataViews(_ input: ListDataViewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataViewsResponse {
        return try await self.client.execute(operation: "ListDataViews", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the active Datasets that a user has access to.
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetsResponse {
        return try await self.client.execute(operation: "ListDatasets", path: "/datasetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Changeset.
    public func updateChangeset(_ input: UpdateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChangesetResponse {
        return try await self.client.execute(operation: "UpdateChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Dataset.
    public func updateDataset(_ input: UpdateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatasetResponse {
        return try await self.client.execute(operation: "UpdateDataset", path: "/datasetsv2/{datasetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
