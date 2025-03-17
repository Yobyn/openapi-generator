//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class UserAPI {

    /**
     Create user
     
     - parameter body: (body) Created user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUser(body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await createUserWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     - parameter body: (body) Created user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func createUserWithRequestBuilder(body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUsersWithArrayInput(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await createUsersWithArrayInputWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithArrayInputWithRequestBuilder(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/createWithArray"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createUsersWithListInput(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await createUsersWithListInputWithRequestBuilder(body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - parameter body: (body) List of user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithListInputWithRequestBuilder(body: [User], apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/createWithList"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteUser(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await deleteUserWithRequestBuilder(username: username, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) The name that needs to be deleted 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: User
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUserByName(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) -> User {
        return try await getUserByNameWithRequestBuilder(username: username, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get user by user name
     - GET /user/{username}
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing. 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<User> 
     */
    open class func getUserByNameWithRequestBuilder(username: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<User> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<User>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func loginUser(username: String, password: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) -> String {
        return try await loginUserWithRequestBuilder(username: username, password: password, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Logs user into the system
     - GET /user/login
     - responseHeaders: [X-Rate-Limit(Int), X-Expires-After(Date)]
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<String> 
     */
    open class func loginUserWithRequestBuilder(username: String, password: String, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<String> {
        let localVariablePath = "/user/login"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "username": (wrappedValue: username.encodeToQueryString(codableHelper: apiConfiguration.codableHelper), isExplode: false),
            "password": (wrappedValue: password.encodeToQueryString(codableHelper: apiConfiguration.codableHelper), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Logs out current logged in user session
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func logoutUser(apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await logoutUserWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func logoutUserWithRequestBuilder(apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/user/logout"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUser(username: String, body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await updateUserWithRequestBuilder(username: username, body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(username: String, body: User, apiConfiguration: PetstoreClientAPIConfiguration = PetstoreClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/user/{username}"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
