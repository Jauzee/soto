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
extension Location {
    ///  Retrieves the device position history from a tracker resource within a specified range of time.  Device positions are deleted after 30 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDevicePositionHistoryPaginator(
        _ input: GetDevicePositionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDevicePositionHistoryRequest, GetDevicePositionHistoryResponse> {
        return .init(
            input: input,
            command: getDevicePositionHistory,
            inputKey: \GetDevicePositionHistoryRequest.nextToken,
            outputKey: \GetDevicePositionHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  A batch request to retrieve all device positions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDevicePositionsPaginator(
        _ input: ListDevicePositionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevicePositionsRequest, ListDevicePositionsResponse> {
        return .init(
            input: input,
            command: listDevicePositions,
            inputKey: \ListDevicePositionsRequest.nextToken,
            outputKey: \ListDevicePositionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofence collections in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGeofenceCollectionsPaginator(
        _ input: ListGeofenceCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGeofenceCollectionsRequest, ListGeofenceCollectionsResponse> {
        return .init(
            input: input,
            command: listGeofenceCollections,
            inputKey: \ListGeofenceCollectionsRequest.nextToken,
            outputKey: \ListGeofenceCollectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofences stored in a given geofence collection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGeofencesPaginator(
        _ input: ListGeofencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGeofencesRequest, ListGeofencesResponse> {
        return .init(
            input: input,
            command: listGeofences,
            inputKey: \ListGeofencesRequest.nextToken,
            outputKey: \ListGeofencesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists map resources in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMapsPaginator(
        _ input: ListMapsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMapsRequest, ListMapsResponse> {
        return .init(
            input: input,
            command: listMaps,
            inputKey: \ListMapsRequest.nextToken,
            outputKey: \ListMapsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists place index resources in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlaceIndexesPaginator(
        _ input: ListPlaceIndexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlaceIndexesRequest, ListPlaceIndexesResponse> {
        return .init(
            input: input,
            command: listPlaceIndexes,
            inputKey: \ListPlaceIndexesRequest.nextToken,
            outputKey: \ListPlaceIndexesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists route calculator resources in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRouteCalculatorsPaginator(
        _ input: ListRouteCalculatorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRouteCalculatorsRequest, ListRouteCalculatorsResponse> {
        return .init(
            input: input,
            command: listRouteCalculators,
            inputKey: \ListRouteCalculatorsRequest.nextToken,
            outputKey: \ListRouteCalculatorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists geofence collections currently associated to the given tracker resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrackerConsumersPaginator(
        _ input: ListTrackerConsumersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrackerConsumersRequest, ListTrackerConsumersResponse> {
        return .init(
            input: input,
            command: listTrackerConsumers,
            inputKey: \ListTrackerConsumersRequest.nextToken,
            outputKey: \ListTrackerConsumersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists tracker resources in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrackersPaginator(
        _ input: ListTrackersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrackersRequest, ListTrackersResponse> {
        return .init(
            input: input,
            command: listTrackers,
            inputKey: \ListTrackersRequest.nextToken,
            outputKey: \ListTrackersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
