import Foundation
import UIKit

public struct ApiModel<T: Codable, U: Codable>: Codable {
    var ch: T?
    var data: U?
}

public struct ApiRequestModel<T: Codable>: Codable {
    var ch: APIModel.ChannelRequestCommonInfo
    var data: T?

    init( screenNumber: String, data: T?) {
        ch = APIModel.ChannelRequestCommonInfo(screenNumber: screenNumber)
        self.data = data
    }
}

public struct ApiResponseModel<T: Codable>: Codable {
    var ch: APIModel.ChannelResponseCommonInfo
    var data: T?

    init() {
        ch = APIModel.ChannelResponseCommonInfo()
    }

    init(data: T?) {
        ch = APIModel.ChannelResponseCommonInfo()
        self.data = data
    }
}

public enum APIModel {

    public struct ChannelRequestCommonInfo: Codable {

        var transactionType: String?
        var ipAddress: String?
        var macAddress: String?
        var uuid: String?
        var screenNumber: String?
        var isTransactionContinue: String?
        var htsId: String?
        var deviceIdentificationCode: String?

        public enum CodingKeys: String, CodingKey {
            case transactionType = "tr_type"
            case ipAddress = "ip"
            case macAddress = "mac"
            case uuid = "gt_uid"
            case screenNumber = "scr_no"
            case isTransactionContinue = "tr_cont"
            case htsId = "hts_id"
            case deviceIdentificationCode = "sphn_os_dvsn_cd"
        }

        init() {
            transactionType = "R"
            ipAddress = "127.0.0.1"
            macAddress = UIDevice().identifierForVendor?.uuidString ?? ""
            uuid = UIDevice().identifierForVendor?.uuidString ?? ""
            screenNumber = ""
            isTransactionContinue = "N"
            htsId = ""
            deviceIdentificationCode = "02"
        }

        init( screenNumber: String ) {
            self.init()
            self.screenNumber = screenNumber
        }
    }

    public struct ChannelResponseCommonInfo: Codable {
        var tr_type: String?
        var ip: String?
        var mac: String?
        var gt_uid: String?
        var scr_no: String?
        var tr_cont: String?
        var hts_id: String?
        var sphn_os_dvsn_cd: String?
        var rt_cd: String?
        var msg_class: String?
        var msg_cd: String?
        var msg: String?

        init() {
            tr_type = ""
            ip = ""
            mac = ""
            gt_uid = ""
            scr_no = ""
            tr_cont = ""
            hts_id = ""
            sphn_os_dvsn_cd = ""
            rt_cd = ""
            msg_class = ""
            msg_cd = ""
            msg = ""
        }
    }
}
