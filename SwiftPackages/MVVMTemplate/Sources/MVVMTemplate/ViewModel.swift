//
//  File.swift
//  
//
//  Created by 여나경 on 2021/07/13.
//

//import RxSwift
//import RxCocoa

public protocol LoginViewModelType {
    var inputs: LoginViewModelInputs { get }
//    var outputs: LoginViewModelOutputs { get }
}

public protocol LoginViewModelInputs {
    func viewDidLoadInput()
    func viewDidAppearInput()
    func viewDidDisappearInput()
    func verifyBioSignature()
    func apiLoginLinprcsInput(_ params: ApiRequestModel<Login.Linprcs.Request>)
    func apiLoginTokenInput(_ inData: ApiModel<Login.ReqCh, Login.Token.ReqData>)
    func apiLoginPinInput(_ inData: ApiModel<Login.ReqCh, Login.Pin.ReqData>)
    func transKeyInput(_ transKey: String?, count: Int)
    func transKeyReturnInput(_ transKey: String?, count: Int)
}

public class LoginViewModel: LoginViewModelType, LoginViewModelInputs {
    public func viewDidLoadInput() {
            
    }
    
    public func viewDidAppearInput() {
                
    }
    
    public func viewDidDisappearInput() {
        
    }
    
    public func verifyBioSignature() {
        
    }
    
    public func apiLoginLinprcsInput(_ params: ApiRequestModel<Login.Linprcs.Request>) {
        
    }
    
    public func apiLoginTokenInput(_ inData: ApiModel<Login.ReqCh, Login.Token.ReqData>) {
        
    }
    
    public func apiLoginPinInput(_ inData: ApiModel<Login.ReqCh, Login.Pin.ReqData>) {
        
    }
    
    public func transKeyInput(_ transKey: String?, count: Int) {
        
    }
    
    public func transKeyReturnInput(_ transKey: String?, count: Int) {
        
    }
    

    // MARK: - protocol ViewModelType impl
    public var inputs: LoginViewModelInputs { self }
//    var outputs: LoginViewModelOutputs { self }
}
//protocol LoginViewModelOutputs {
//    var viewDidLoadOutput: PublishSubject<Void> { get }
//    var viewDidAppearOutput: PublishSubject<Void> { get }
//    var viewDidDisappearOutput: PublishSubject<Void> { get }
//    var verifyBioSignatureProperty: PublishSubject<(Bool, [AnyHashable: Any]?)> { get }
//    var apiLinprcsOutput: PublishSubject<(Bool, ApiResponseModel<Login.Linprcs.Response>)> { get }
//    var apiLoginTokenOutput: PublishSubject<ApiModel<Login.ResCh, Login.Token.ResData>> { get }
//    var apiLoginPinOutput: PublishSubject<ApiModel<Login.ResCh, Login.Pin.ResData>> { get }
//    var transKeyOutput: PublishSubject<(String, Int)> { get }
//    var transKeyReturnOutput: PublishSubject<(String, Int)> { get }
//    var isLoadingOutput: PublishSubject<Bool> { get }
//    var errorOutput: PublishSubject<ResultError> { get }
//}

