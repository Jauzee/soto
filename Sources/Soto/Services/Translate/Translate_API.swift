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

@_exported import SotoCore

/// Service object for interacting with AWS Translate service.
///
/// Provides translation between one source language and another of the same set of languages.
public struct Translate: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Translate client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSShineFrontendService_20170701",
            service: "translate",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            errorType: TranslateErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3. Parallel data files contain examples that show how you want segments of text to be translated. By adding parallel data, you can influence the style, tone, and word choice in your translation output.
    public func createParallelData(_ input: CreateParallelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParallelDataResponse> {
        return self.client.execute(operation: "CreateParallelData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a parallel data resource in Amazon Translate.
    public func deleteParallelData(_ input: DeleteParallelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteParallelDataResponse> {
        return self.client.execute(operation: "DeleteParallelData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A synchronous action that deletes a custom terminology.
    @discardableResult public func deleteTerminology(_ input: DeleteTerminologyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTerminology", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the properties associated with an asynchronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.
    public func describeTextTranslationJob(_ input: DescribeTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTextTranslationJobResponse> {
        return self.client.execute(operation: "DescribeTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about a parallel data resource.
    public func getParallelData(_ input: GetParallelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetParallelDataResponse> {
        return self.client.execute(operation: "GetParallelData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a custom terminology.
    public func getTerminology(_ input: GetTerminologyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTerminologyResponse> {
        return self.client.execute(operation: "GetTerminology", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.
    public func importTerminology(_ input: ImportTerminologyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportTerminologyResponse> {
        return self.client.execute(operation: "ImportTerminology", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of your parallel data resources in Amazon Translate.
    public func listParallelData(_ input: ListParallelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListParallelDataResponse> {
        return self.client.execute(operation: "ListParallelData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of custom terminologies associated with your account.
    public func listTerminologies(_ input: ListTerminologiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTerminologiesResponse> {
        return self.client.execute(operation: "ListTerminologies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of the batch translation jobs that you have submitted.
    public func listTextTranslationJobs(_ input: ListTextTranslationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTextTranslationJobsResponse> {
        return self.client.execute(operation: "ListTextTranslationJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see async. Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.  Amazon Translate does not support batch translation of multiple source languages at once.
    public func startTextTranslationJob(_ input: StartTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartTextTranslationJobResponse> {
        return self.client.execute(operation: "StartTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.
    public func stopTextTranslationJob(_ input: StopTextTranslationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTextTranslationJobResponse> {
        return self.client.execute(operation: "StopTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Translates input text from the source language to the target language. For a list of available languages and language codes, see what-is-languages.
    public func translateText(_ input: TranslateTextRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TranslateTextResponse> {
        return self.client.execute(operation: "TranslateText", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a previously created parallel data resource by importing a new input file from Amazon S3.
    public func updateParallelData(_ input: UpdateParallelDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateParallelDataResponse> {
        return self.client.execute(operation: "UpdateParallelData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Translate {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Translate, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
