import Foundation
import UIKit

public enum Login {
    // MARK: - Ch
    public struct ReqCh: Codable {
        var tr_type: String?
        var ip: String?
        var mac: String?
        var gt_uid: String?
        var scr_no: String?
        var tr_cont: String?
        var hts_id: String?
        var sphn_os_dvsn_cd: String?
    }

    public struct ResCh: Codable {
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
    }

    // MARK: - Linprcs
    public enum Linprcs {
        public struct Request: Codable {
            var afcmId: String
            var apnsId: String
            var appPushId: String
            var mbphUniqNo: String

            public enum CodingKeys: String, CodingKey {
                case afcmId = "afcm_id"
                case apnsId = "apns_id"
                case appPushId = "app_push_id"
                case mbphUniqNo = "mbph_uniq_no"
            }

            init() {
                afcmId = ""
                apnsId = ""
                appPushId = ""
                mbphUniqNo = UIDevice.current.identifierForVendor?.uuidString ?? ""
            }
        }

        public struct Response: Codable {
            var custId: String?
            var authToken: String?

            public enum CodingKeys: String, CodingKey {
                case custId = "myd_cust_id"
                case authToken = "x_auth_token"
            }
        }
    }

    // MARK: - VerifyLoginTranWithoutPretran
    public enum VerifyLoginTranWithoutPretran {
        public struct Request: Codable {
            var bioCrtcSuccYn: String?
            var bioInfoMdfcYn: String
            var certSeqNo: String
            var crtcDataCon: String
            var crtcPtrnDcd: String
            var lgnElsgDataCon: String
            var lgnElsgOnttCon: String
            var msbVrsnVl: String
            var rqstChnlDcd: String
            var usrCctnMctlId: String

            public enum CodingKeys: String, CodingKey {
                case bioCrtcSuccYn = "bio_crtc_succ_yn"
                case bioInfoMdfcYn = "bio_info_mdfc_yn"
                case certSeqNo = "cert_seq_no"
                case crtcDataCon = "crtc_data_con"
                case crtcPtrnDcd = "crtc_ptrn_dcd"
                case lgnElsgDataCon = "lgn_elsg_data_con"
                case lgnElsgOnttCon = "lgn_elsg_ontt_con"
                case msbVrsnVl = "msb_vrsn_vl"
                case rqstChnlDcd = "rqst_chnl_dcd"
                case usrCctnMctlId = "usr_cctn_mctl_id"
            }
        }

        public struct Response: Codable {
            var bioCrtcDcd: String?
            var bioInfoMdfcYn: String?
            var cprsPubKey: String?
            var crtcErorCnt: String?
            var crtcLockYn: String?
            var crtcMaxErorAlwnCnt: String?
            var crtcPtrnDcd: String
            var crtcUseYn: String?
            var custNo: String?
            var errCd: String

            public enum CodingKeys: String, CodingKey {
                case bioCrtcDcd = "bio_crtc_dcd"
                case bioInfoMdfcYn = "bio_info_mdfc_yn"
                case cprsPubKey = "cprs_pub_key"
                case crtcErorCnt = "crtc_eror_cnt"
                case crtcLockYn = "crtc_lock_yn"
                case crtcMaxErorAlwnCnt = "crtc_max_eror_alwn_cnt"
                case crtcPtrnDcd = "crtc_ptrn_dcd"
                case crtcUseYn = "crtc_use_yn"
                case custNo = "cust_no"
                case errCd = "err_cd"
            }
        }
    }

    // MARK: - Hist
    public enum Hist {
        public struct Request: Codable {
            var sessionId: String
            var mbleTmnlId: String
//            var custId: String
            var osCode: String

            public enum CodingKeys: String, CodingKey {
                case sessionId = "lin_sess_id"
                case mbleTmnlId = "mble_tmnl_id"
//                case custId = "myd_cust_id"
                case osCode = "sphn_os_dvsn_cd"
            }

            init() {
                sessionId = ""
                mbleTmnlId = ""
//                custId = UserDefaults.standard.myCustId
                osCode = "02"
            }
        }

        public struct Response: Codable {
            var successMessage: String?

            public enum CodingKeys: String, CodingKey {
                case successMessage = "success_msg"
            }
        }
    }

    // MARK: - Pin
    public enum Pin {
        public struct ReqData: Codable {
            var cust_no: String?
            var msb_vrsn_vl: String?
            var pin_data_con: String?
            var rqst_chnl_dcd: String?
            var usr_cctn_mctl_id: String?
        }

        public struct ResData: Codable {
            var err_cd: String?
            var pin_eror_cnt: String?
            var pin_max_eror_alwn_cnt: String?
        }
    }

    // MARK: - Token
    public enum Token {
        public struct ReqData: Codable {
            var myd_cust_id: String?
            var myd_cust_pwd: String?
        }

        public struct ResData: Codable {
            var x_auth_token: String?
        }
    }
}

// MARK: - Login Sample
extension Login {

    // MARK: - Token Sample
    static func sampleTokenReqModel() -> ApiModel<Login.ReqCh, Token.ReqData> {
        let ch = ReqCh(scr_no: "####1111", hts_id: "##2222")
        let data = Token.ReqData(myd_cust_id: "####3333", myd_cust_pwd: "##4444")
        let model = ApiModel(ch: ch, data: data)
        return model
    }

    static func sampleTokenResModel() -> ApiModel<Login.ResCh, Token.ResData> {
        let ch = ResCh(scr_no: "####1111", hts_id: "##2222")
        let data = Token.ResData(x_auth_token: "##7777")
        let model = ApiModel(ch: ch, data: data)
        return model
    }

    static func sampleTokenReqData() -> Token.ReqData {
        let data = Token.ReqData(myd_cust_id: "####8888", myd_cust_pwd: "##9999")
        return data
    }

    static func sampleTokenResData() -> Token.ResData {
        let data = Token.ResData(x_auth_token: "##0000")
        return data
    }

    // MARK: - Pin Sample
    static func samplePinReqModel() -> ApiModel<Login.ReqCh, Pin.ReqData> {
        let ch = ReqCh(scr_no: "####1111", hts_id: "##2222")
        let data = Pin.ReqData(cust_no: "####3333", pin_data_con: "##4444")
        let model = ApiModel(ch: ch, data: data)
        return model
    }

    static func samplePinResModel() -> ApiModel<Login.ResCh, Pin.ResData> {
        let ch = ResCh(scr_no: "####1111", hts_id: "##2222")
        let data = Pin.ResData(err_cd: "##7777")
        let model = ApiModel(ch: ch, data: data)
        return model
    }

    static func samplePinReqData() -> Pin.ReqData {
        let data = Pin.ReqData(cust_no: "####8888", usr_cctn_mctl_id: "##9999")
        return data
    }

    static func samplePinResData() -> Pin.ResData {
        let data = Pin.ResData(err_cd: "##0000", pin_eror_cnt: "##00")
        return data
    }

}
