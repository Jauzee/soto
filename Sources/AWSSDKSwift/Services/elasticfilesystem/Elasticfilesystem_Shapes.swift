// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Elasticfilesystem {

    public struct DescribeFileSystemsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Array of file system descriptions.
        public var fileSystems: [FileSystemDescription]? = nil
        /// Present if provided by caller in the request (String).
        public var marker: String? = nil
        /// Present if there are more file systems than returned in the response (String). You can use the NextMarker in the subsequent request to fetch the descriptions.
        public var nextMarker: String? = nil

        public init() {}

        public init(fileSystems: [FileSystemDescription]? = nil, marker: String? = nil, nextMarker: String? = nil) {
            self.fileSystems = fileSystems
            self.marker = marker
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            if let fileSystems = dictionary["FileSystems"] as? [[String: Any]] {
                self.fileSystems = try fileSystems.map({ try FileSystemDescription(dictionary: $0) })
            }
            self.marker = dictionary["Marker"] as? String
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct DescribeTagsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// If the request included a Marker, the response returns that value in this field.
        public var marker: String? = nil
        /// Returns tags associated with the file system as an array of Tag objects. 
        public var tags: [Tag] = []
        /// If a value is present, there are more tags to return. In a subsequent request, you can provide the value of NextMarker as the value of the Marker parameter in your next request to retrieve the next set of tags.
        public var nextMarker: String? = nil

        public init() {}

        public init(marker: String? = nil, tags: [Tag], nextMarker: String? = nil) {
            self.marker = marker
            self.tags = tags
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct CreateTagsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        /// ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.
        public var fileSystemId: String = ""
        /// Array of Tag objects to add. Each Tag object is a key-value pair. 
        public var tags: [Tag] = []

        public init() {}

        public init(fileSystemId: String, tags: [Tag]) {
            self.fileSystemId = fileSystemId
            self.tags = tags
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
        }
    }

    public struct DescribeMountTargetsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["MaxItems": "MaxItems", "FileSystemId": "FileSystemId", "Marker": "Marker", "MountTargetId": "MountTargetId"]
        }
        /// (Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.
        public var maxItems: Int32? = nil
        /// (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if MountTargetId is not included.
        public var fileSystemId: String? = nil
        /// (Optional) Opaque pagination token returned from a previous DescribeMountTargets operation (String). If present, it specifies to continue the list from where the previous returning call left off.
        public var marker: String? = nil
        /// (Optional) ID of the mount target that you want to have described (String). It must be included in your request if FileSystemId is not included.
        public var mountTargetId: String? = nil

        public init() {}

        public init(maxItems: Int32? = nil, fileSystemId: String? = nil, marker: String? = nil, mountTargetId: String? = nil) {
            self.maxItems = maxItems
            self.fileSystemId = fileSystemId
            self.marker = marker
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            self.maxItems = dictionary["MaxItems"] as? Int32
            self.fileSystemId = dictionary["FileSystemId"] as? String
            self.marker = dictionary["Marker"] as? String
            self.mountTargetId = dictionary["MountTargetId"] as? String
        }
    }

    public struct DescribeFileSystemsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["MaxItems": "MaxItems", "FileSystemId": "FileSystemId", "Marker": "Marker", "CreationToken": "CreationToken"]
        }
        /// (Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the MaxItems parameter specified in the request and the service's internal maximum number of items per page. 
        public var maxItems: Int32? = nil
        /// (Optional) ID of the file system whose description you want to retrieve (String).
        public var fileSystemId: String? = nil
        /// (Optional) Opaque pagination token returned from a previous DescribeFileSystems operation (String). If present, specifies to continue the list from where the returning call had left off. 
        public var marker: String? = nil
        /// (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
        public var creationToken: String? = nil

        public init() {}

        public init(maxItems: Int32? = nil, fileSystemId: String? = nil, marker: String? = nil, creationToken: String? = nil) {
            self.maxItems = maxItems
            self.fileSystemId = fileSystemId
            self.marker = marker
            self.creationToken = creationToken
        }

        public init(dictionary: [String: Any]) throws {
            self.maxItems = dictionary["MaxItems"] as? Int32
            self.fileSystemId = dictionary["FileSystemId"] as? String
            self.marker = dictionary["Marker"] as? String
            self.creationToken = dictionary["CreationToken"] as? String
        }
    }

    public struct DescribeMountTargetSecurityGroupsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Array of security groups.
        public var securityGroups: [String] = []

        public init() {}

        public init(securityGroups: [String]) {
            self.securityGroups = securityGroups
        }

        public init(dictionary: [String: Any]) throws {
            guard let securityGroups = dictionary["SecurityGroups"] as? [String] else { throw InitializableError.missingRequiredParam("SecurityGroups") }
            self.securityGroups = securityGroups
        }
    }

    public struct DeleteTagsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        /// ID of the file system whose tags you want to delete (String).
        public var fileSystemId: String = ""
        /// List of tag keys to delete.
        public var tagKeys: [String] = []

        public init() {}

        public init(fileSystemId: String, tagKeys: [String]) {
            self.fileSystemId = fileSystemId
            self.tagKeys = tagKeys
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let tagKeys = dictionary["TagKeys"] as? [String] else { throw InitializableError.missingRequiredParam("TagKeys") }
            self.tagKeys = tagKeys
        }
    }

    public struct DescribeTagsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["Marker": "Marker", "MaxItems": "MaxItems"]
        }
        public var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        /// (Optional) Opaque pagination token returned from a previous DescribeTags operation (String). If present, it specifies to continue the list from where the previous call left off.
        public var marker: String? = nil
        /// ID of the file system whose tag set you want to retrieve.
        public var fileSystemId: String = ""
        /// (Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.
        public var maxItems: Int32? = nil

        public init() {}

        public init(marker: String? = nil, fileSystemId: String, maxItems: Int32? = nil) {
            self.marker = marker
            self.fileSystemId = fileSystemId
            self.maxItems = maxItems
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            self.maxItems = dictionary["MaxItems"] as? Int32
        }
    }

    public struct ModifyMountTargetSecurityGroupsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        /// ID of the mount target whose security groups you want to modify.
        public var mountTargetId: String = ""
        /// Array of up to five VPC security group IDs.
        public var securityGroups: [String]? = nil

        public init() {}

        public init(mountTargetId: String, securityGroups: [String]? = nil) {
            self.mountTargetId = mountTargetId
            self.securityGroups = securityGroups
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
            if let securityGroups = dictionary["SecurityGroups"] as? [String] {
                self.securityGroups = securityGroups
            }
        }
    }

    public struct Tag: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Value of the tag key.
        public var value: String = ""
        /// Tag key (String). The key can't start with aws:.
        public var key: String = ""

        public init() {}

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        public init(dictionary: [String: Any]) throws {
            guard let value = dictionary["Value"] as? String else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
            guard let key = dictionary["Key"] as? String else { throw InitializableError.missingRequiredParam("Key") }
            self.key = key
        }
    }

    public struct DescribeMountTargetsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// If the request included the Marker, the response returns that value in this field.
        public var marker: String? = nil
        /// Returns the file system's mount targets as an array of MountTargetDescription objects.
        public var mountTargets: [MountTargetDescription]? = nil
        /// If a value is present, there are more mount targets to return. In a subsequent request, you can provide Marker in your request with this value to retrieve the next set of mount targets.
        public var nextMarker: String? = nil

        public init() {}

        public init(marker: String? = nil, mountTargets: [MountTargetDescription]? = nil, nextMarker: String? = nil) {
            self.marker = marker
            self.mountTargets = mountTargets
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            if let mountTargets = dictionary["MountTargets"] as? [[String: Any]] {
                self.mountTargets = try mountTargets.map({ try MountTargetDescription(dictionary: $0) })
            }
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct DeleteMountTargetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        /// ID of the mount target to delete (String).
        public var mountTargetId: String = ""

        public init() {}

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
        }
    }

    public struct DeleteFileSystemRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        /// ID of the file system you want to delete.
        public var fileSystemId: String = ""

        public init() {}

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
        }
    }

    public struct CreateFileSystemRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The PerformanceMode of the file system. We recommend generalPurpose performance mode for most file systems. File systems using the maxIO performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.
        public var performanceMode: String? = nil
        /// String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.
        public var creationToken: String = ""

        public init() {}

        public init(performanceMode: String? = nil, creationToken: String) {
            self.performanceMode = performanceMode
            self.creationToken = creationToken
        }

        public init(dictionary: [String: Any]) throws {
            self.performanceMode = dictionary["PerformanceMode"] as? String
            guard let creationToken = dictionary["CreationToken"] as? String else { throw InitializableError.missingRequiredParam("CreationToken") }
            self.creationToken = creationToken
        }
    }

    public struct FileSystemSize: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Latest known metered size (in bytes) of data stored in the file system.
        public var value: Int64 = 0
        /// Time at which the size of data, returned in the Value field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.
        public var timestamp: Date? = nil

        public init() {}

        public init(value: Int64, timestamp: Date? = nil) {
            self.value = value
            self.timestamp = timestamp
        }

        public init(dictionary: [String: Any]) throws {
            guard let value = dictionary["Value"] as? Int64 else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
            self.timestamp = dictionary["Timestamp"] as? Date
        }
    }

    public struct DescribeMountTargetSecurityGroupsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        /// ID of the mount target whose security groups you want to retrieve.
        public var mountTargetId: String = ""

        public init() {}

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
        }
    }

    public struct CreateMountTargetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Up to five VPC security group IDs, of the form sg-xxxxxxxx. These must be for the same VPC as subnet specified.
        public var securityGroups: [String]? = nil
        /// ID of the file system for which to create the mount target.
        public var fileSystemId: String = ""
        /// ID of the subnet to add the mount target in.
        public var subnetId: String = ""
        /// Valid IPv4 address within the address range of the specified subnet.
        public var ipAddress: String? = nil

        public init() {}

        public init(securityGroups: [String]? = nil, fileSystemId: String, subnetId: String, ipAddress: String? = nil) {
            self.securityGroups = securityGroups
            self.fileSystemId = fileSystemId
            self.subnetId = subnetId
            self.ipAddress = ipAddress
        }

        public init(dictionary: [String: Any]) throws {
            if let securityGroups = dictionary["SecurityGroups"] as? [String] {
                self.securityGroups = securityGroups
            }
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let subnetId = dictionary["SubnetId"] as? String else { throw InitializableError.missingRequiredParam("SubnetId") }
            self.subnetId = subnetId
            self.ipAddress = dictionary["IpAddress"] as? String
        }
    }

    public struct FileSystemDescription: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// You can add tags to a file system, including a Name tag. For more information, see CreateTags. If the file system has a Name tag, Amazon EFS returns the value in this field. 
        public var name: String? = nil
        /// Opaque string specified in the request.
        public var creationToken: String = ""
        /// Latest known metered size (in bytes) of data stored in the file system, in bytes, in its Value field, and the time at which that size was determined in its Timestamp field. The Timestamp value is the integer number of seconds since 1970-01-01T00:00:00Z. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size the file system was at any instant in time. 
        public var sizeInBytes: FileSystemSize = FileSystemSize()
        /// ID of the file system, assigned by Amazon EFS.
        public var fileSystemId: String = ""
        /// Lifecycle phase of the file system.
        public var lifeCycleState: String = ""
        /// Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).
        public var creationTime: Date = Date()
        /// The PerformanceMode of the file system.
        public var performanceMode: String = ""
        /// Current number of mount targets that the file system has. For more information, see CreateMountTarget.
        public var numberOfMountTargets: Int32 = 0
        /// AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.
        public var ownerId: String = ""

        public init() {}

        public init(name: String? = nil, creationToken: String, sizeInBytes: FileSystemSize, fileSystemId: String, lifeCycleState: String, creationTime: Date, performanceMode: String, numberOfMountTargets: Int32, ownerId: String) {
            self.name = name
            self.creationToken = creationToken
            self.sizeInBytes = sizeInBytes
            self.fileSystemId = fileSystemId
            self.lifeCycleState = lifeCycleState
            self.creationTime = creationTime
            self.performanceMode = performanceMode
            self.numberOfMountTargets = numberOfMountTargets
            self.ownerId = ownerId
        }

        public init(dictionary: [String: Any]) throws {
            self.name = dictionary["Name"] as? String
            guard let creationToken = dictionary["CreationToken"] as? String else { throw InitializableError.missingRequiredParam("CreationToken") }
            self.creationToken = creationToken
            guard let sizeInBytes = dictionary["SizeInBytes"] as? [String: Any] else { throw InitializableError.missingRequiredParam("SizeInBytes") }
            self.sizeInBytes = try Elasticfilesystem.FileSystemSize(dictionary: sizeInBytes)
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let lifeCycleState = dictionary["LifeCycleState"] as? String else { throw InitializableError.missingRequiredParam("LifeCycleState") }
            self.lifeCycleState = lifeCycleState
            guard let creationTime = dictionary["CreationTime"] as? Date else { throw InitializableError.missingRequiredParam("CreationTime") }
            self.creationTime = creationTime
            guard let performanceMode = dictionary["PerformanceMode"] as? String else { throw InitializableError.missingRequiredParam("PerformanceMode") }
            self.performanceMode = performanceMode
            guard let numberOfMountTargets = dictionary["NumberOfMountTargets"] as? Int32 else { throw InitializableError.missingRequiredParam("NumberOfMountTargets") }
            self.numberOfMountTargets = numberOfMountTargets
            guard let ownerId = dictionary["OwnerId"] as? String else { throw InitializableError.missingRequiredParam("OwnerId") }
            self.ownerId = ownerId
        }
    }

    public struct MountTargetDescription: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// ID of the mount target's subnet.
        public var subnetId: String = ""
        /// ID of the network interface that Amazon EFS created when it created the mount target.
        public var networkInterfaceId: String? = nil
        /// System-assigned mount target ID.
        public var mountTargetId: String = ""
        /// Address at which the file system may be mounted via the mount target.
        public var ipAddress: String? = nil
        /// ID of the file system for which the mount target is intended.
        public var fileSystemId: String = ""
        /// Lifecycle state of the mount target.
        public var lifeCycleState: String = ""
        /// AWS account ID that owns the resource.
        public var ownerId: String? = nil

        public init() {}

        public init(subnetId: String, networkInterfaceId: String? = nil, mountTargetId: String, ipAddress: String? = nil, fileSystemId: String, lifeCycleState: String, ownerId: String? = nil) {
            self.subnetId = subnetId
            self.networkInterfaceId = networkInterfaceId
            self.mountTargetId = mountTargetId
            self.ipAddress = ipAddress
            self.fileSystemId = fileSystemId
            self.lifeCycleState = lifeCycleState
            self.ownerId = ownerId
        }

        public init(dictionary: [String: Any]) throws {
            guard let subnetId = dictionary["SubnetId"] as? String else { throw InitializableError.missingRequiredParam("SubnetId") }
            self.subnetId = subnetId
            self.networkInterfaceId = dictionary["NetworkInterfaceId"] as? String
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
            self.ipAddress = dictionary["IpAddress"] as? String
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let lifeCycleState = dictionary["LifeCycleState"] as? String else { throw InitializableError.missingRequiredParam("LifeCycleState") }
            self.lifeCycleState = lifeCycleState
            self.ownerId = dictionary["OwnerId"] as? String
        }
    }

}