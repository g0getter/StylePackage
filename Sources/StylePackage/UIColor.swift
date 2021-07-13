//
//  UIColor.swift
//  with
//
//  Created by 여나경 on 2021/06/18.
//

import Foundation
import UIKit

extension UIColor {
    /// RGB가 각각 `red`, `green`, `blue`이고 opacity는 `a`인 Color object 반환
    public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: a
        )
    }
}

extension UIColor {
    /// RGB가 `hex`, opacity는 1에 해당하는 Color object 반환
    public convenience init(hex: Int) {
        self.init(
            red: (hex >> 16) & 0xff,
            green: (hex >> 8) & 0xff,
            blue: hex & 0xff
        )
    }
}

extension UIColor {
    /// RGB(0, 0, 0)
    public class var black_000000: UIColor { return UIColor(hex: 0x000000)}
    /// RGB(34, 34, 34)
    public class var black_222222: UIColor { return UIColor(hex: 0x222222)}
    /// RGB(70,70,70(
    public class var black_464646: UIColor { return UIColor(hex: 0x464646)}
    /// RGB(84, 84, 84)
    public class var black_545454: UIColor { return UIColor(hex: 0x545454)}
    /// RGB(255, 255, 255)
    public class var white_FFFFFF: UIColor { return UIColor(hex: 0xffffff)}
    /// RGB(80, 120, 242)
    public class var blue_5078F2: UIColor { return UIColor(hex: 0x5078f2)}
    /// RGB(242, 243, 255)
    public class var blue_F2F3FF: UIColor { return UIColor(hex: 0xF2F3FF)}
    /// RGB(0, 24, 255)
    public class var blue_0018ff: UIColor { return UIColor(hex: 0x0018ff)}
    /// RGB(233, 233, 233)
    public class var gray_E9E9E9: UIColor { return UIColor(hex: 0xE9E9E9)}
    /// RGB(245, 245, 245)
    public class var gray_F5F5F5: UIColor { return UIColor(hex: 0xF5F5F5)}
    /// RGB(136,136,136)
    public class var gray_888888: UIColor { return UIColor(hex: 0x888888)}
    /// RGB(230, 230, 230)
    public class var gray_E6E6E6: UIColor { return UIColor(hex: 0xE6E6E6)}
    /// RGB(227, 227, 227)
    public class var gray_E3E3E3: UIColor { return UIColor(hex: 0xE3E3E3)}
    /// RGB(128, 130, 136)
    public class var gray_808288: UIColor { return UIColor(hex: 0x808288)}
    /// RGB(153,153,153)
    public class var gray_999999: UIColor { return UIColor(hex: 0x999999)}
    /// RGB(102, 102, 102)
    public class var gray_666666: UIColor { return UIColor(hex: 0x666666)}
    /// RGB(232, 236, 241)
    public class var gray_E8ECF1: UIColor { return UIColor(hex: 0xE8ECF1)}
    /// RGB(211, 211, 211)
    public class var gray_light: UIColor { return UIColor(hex: 0xD3D3D3)}
    /// RGB(253, 254, 253)
    public class var offWhite: UIColor { return UIColor(hex: 0xFDFEFD)}

    /// RGB(216, 216, 216)
    public class var gray_D8D8D8: UIColor { return UIColor(hex: 0xD8D8D8)}
    /// RGB(242, 242, 242)
    public class var gray_F2F2F2: UIColor { return UIColor(hex: 0xF2F2F2)}
    /// RGB(187, 187, 187)
    public class var gray_BBBBBB: UIColor { return UIColor(hex: 0xBBBBBB)}
    /// RGB(2, 136, 88)
    public class var green_028858: UIColor { return UIColor(hex: 0x028858)}
    /// RGB(128,128,128)
    public class var gray_808080: UIColor { return UIColor(hex: 0x808080)}
    /// RGB(252, 33, 55)
    public class var red_FC2137: UIColor { return UIColor(hex: 0xFC2137)}
    /// RGB(255, 90, 65)
    public class var red_retry: UIColor { return UIColor(hex: 0xFF5B41)}
    /// RGB(252, 22, 22)
    public class var red_FC1616: UIColor { return UIColor(hex: 0xFC1616)}
    /// RGB(188,188,188)
    public class var gray_BCBCBC: UIColor { return UIColor(hex: 0xBCBCBC)}
    /// RGB(177,177,177) , B1B1B1
    public class var gray_B1B1B1: UIColor { return UIColor(hex: 0xB1B1B1)}//금융기관 선택 팝업 버튼 텍스트
    /// RGB(224, 224, 224) , E0E0E0
    public class var gray_E0E0E0: UIColor { return UIColor(hex: 0xE0E0E0)}//금융기관 선택 라인
    /// RGB(55, 70, 255
    public class var blue_3746FF: UIColor { return UIColor(hex: 0x3746FF)}
    /// RGB(225, 225, 225)
    public class var gray_E1E1E1: UIColor { return UIColor(hex: 0xE1E1E1)}
    /// RGB(120, 120, 120)
    public class var gray_787878: UIColor { return UIColor(hex: 0x787878)}
    /// RGB(222, 222, 222)
    public class var gray_DEDEDE: UIColor { return UIColor(hex: 0xDEDEDE)}
    /// RGB(199, 199, 199)
    public class var gray_C7C7C7: UIColor { return UIColor(hex: 0xC7C7C7)}
    /// RGB(238, 238, 238)
    public class var gray_EEEEEE: UIColor { return UIColor(hex: 0xEEEEEE)}
    /// RGB(250,238,226)
    public class var orange_FAEEE2: UIColor { return UIColor(hex: 0xFAEEE2)}
    /// RGB(255,136, 0)
    public class var orange_FF8800: UIColor { return UIColor(hex: 0xFF8800)}
    /// RGB(255, 111, 0)
    public class var orange_FF6F00: UIColor { return UIColor(hex: 0xFF6F00)}

    /// RGB(170, 188, 255)
    public class var gray_aabcff: UIColor { return UIColor(hex: 0xaabcff)}
    /// RGB(217, 217, 217)
    public class var gray_D9D9D9: UIColor { return UIColor(hex: 0xD9D9D9)}
    /// RGB(78, 254, 163)
    public class var green_4EFEA2: UIColor { return UIColor(hex: 0x4EFEA2)}
    /// RGB(55, 68, 255)
    public class var blue_3744ff: UIColor { return UIColor(hex: 0x3744ff)}

    public class var yellow_ffd55e: UIColor { return UIColor(hex: 0xffd55e)}
    /// RGB(35, 29, 255)
    public class var blue_231dff: UIColor { return UIColor(hex: 0x231dff)}

    public class var blue_556DFF: UIColor { return UIColor(hex: 0x556DFF)}
    /// RGB(114, 132, 255)
    public class var blue_7284FF: UIColor { return UIColor(hex: 0x7284FF)}
    /// RGB(155, 167, 255)
    public class var blue_9BA7FF: UIColor { return UIColor(hex: 0x9BA7FF)}
    /// RGB(191, 199, 255)
    public class var blue_BFC7FF: UIColor { return UIColor(hex: 0xBFC7FF)}
    /// RGB(217, 222, 255)
    public class var blue_D9DEFF: UIColor { return UIColor(hex: 0xD9DEFF)}

    public class var red_FC5C6C: UIColor { return UIColor(hex: 0xFC5C6C)}
    public class var red_FE8B96: UIColor { return UIColor(hex: 0xFE8B96)}
    public class var red_FFE1E4: UIColor { return UIColor(hex: 0xFFE1E4)}

    public class var Orange_ff7700: UIColor { return UIColor(hex: 0xff7700)}
    public class var Orange_ff8800: UIColor { return UIColor(hex: 0xff8800)}
    public class var Orange_ff9c2b: UIColor { return UIColor(hex: 0xff9c2b)}
    public class var Orange_ffb158: UIColor { return UIColor(hex: 0xffb158)}
    public class var Orange_ffc98c: UIColor { return UIColor(hex: 0xffc98c)}
    public class var Orange_ffdfba: UIColor { return UIColor(hex: 0xffdfba)}

}

extension UIColor {
    /// Opacity값이 `opacity`인 Color object 반환
    func alpha(_ opacity: CGFloat) -> UIColor {
        return self.withAlphaComponent(opacity)
    }
}
