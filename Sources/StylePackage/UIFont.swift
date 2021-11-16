//
//  UIFont.swift
//  with
//
//  Created by 여나경 on 2021/06/20.
//

import UIKit

extension UIFont {
    /// FontSize: 34
    public class var head1: UIFont { return .font_34_b }
    /// FontSize: 30
    public class var head2: UIFont { return .font_30_b }
    /// FontSize: 24
    public class var head3: UIFont { return .font_24_b }
    /// FontSize: 22
    public class var head4: UIFont { return .font_22_b }
    /// FontSize:28
    public class var head5: UIFont { return .font_28_b }
    /// FontSize: 20
    public class var subtitle1: UIFont { return .font_20_b }
    /// FontSize: 18
    public class var subtitle2: UIFont { return .font_18_b }
    /// FontSize: 18, regular
    public class var subtitle2_r: UIFont { return .font_18_r }
    /// FontSize: 16
    public class var subtitle3: UIFont { return .font_16_b }
    /// FontSize: 16
    public class var body1: UIFont { return .font_16_b }
    /// FontSize: 16, regular
    public class var body1_r: UIFont { return .font_16_r }
    /// FontSize: 15
    public class var body2: UIFont { return .font_15_b }
    /// FontSize: 15, regular
    public class var body2_r: UIFont { return .font_15_r }
    /// FontSize: 14
    public class var body3: UIFont { return .font_14_b }
    /// FontSize: 14, regular
    public class var body3_r: UIFont { return .font_14_r }
    /// FontSize: 13
    public class var body4: UIFont { return .font_13_b }
    /// FontSize: 13, regular
    public class var body4_r: UIFont { return .font_13_r }

    // MARK: - 크기 지정된 폰트
    // MARK: Font 34
    public class var font_34_b: UIFont { return .font_b(34) }
    public class var font_34_r: UIFont { return .font_r(34) }

    // MARK: Font 30
    public class var font_30_b: UIFont { return .font_b(30) }
    public class var font_30_r: UIFont { return .font_r(30) }

    // MARK: Font 28
    public class var font_28_b: UIFont { return .font_b(28) }
    public class var font_28_r: UIFont { return .font_r(28) }

    // MARK: Font 24
    public class var font_24_b: UIFont { return .font_b(24) }
    public class var font_24_r: UIFont { return .font_r(24) }

    // MARK: Font 22
    public class var font_22_b: UIFont { return .font_b(22) }
    public class var font_22_r: UIFont { return .font_r(22) }

    // MARK: Font 20
    public class var font_20_b: UIFont { return .font_b(20) }
    public class var font_20_r: UIFont { return .font_r(20) }

    // MARK: Font 18
    public class var font_18_b: UIFont { return .font_b(18) }
    public class var font_18_r: UIFont { return .font_r(18) }

    // MARK: Font 16
    public class var font_16_b: UIFont { return .font_b(16) }
    public class var font_16_r: UIFont { return .font_r(16) }

    // MARK: Font 15
    public class var font_15_b: UIFont { return .font_b(15) }
    public class var font_15_r: UIFont { return .font_r(15) }

    // MARK: Font 14
    public class var font_14_b: UIFont { return .font_b(14) }
    public class var font_14_r: UIFont { return .font_r(14) }

    // MARK: Font 13
    public class var font_13_b: UIFont { return .font_b(13) }
    public class var font_13_r: UIFont { return .font_r(13) }
}

extension UIFont {
    // MARK: - 기본 폰트
    /// Bold 타입 기본 폰트
    public class func font_b(_ size: CGFloat) -> UIFont {
        return .systemFont(ofSize: size, weight: .bold)
    }

    /// Medium(Regular) 타입 기본 폰트
    public class func font_r(_ size: CGFloat) -> UIFont {
        return .systemFont(ofSize: size, weight: .regular)
    }

    // MARK: - 숫자 폰트
    /// Bold 타입 숫자 폰트
    public class func font_num_b(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "SFProDisplay-Bold", size: size) else {
            return .systemFont(ofSize: size)
        }

        return font
    }

    // MARK: - Apple 폰트
    /// Bold 타입 Apple 폰트
    public class func font_apple_b(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "AppleSDGothicNeo-Bold", size: size) else {
            return .systemFont(ofSize: size)
        }

        return font
    }

    /// Medium(Regular) 타입 Apple 폰트
    public class func font_apple_m(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "AppleSDGothicNeo-Medium", size: size) else {
            return .systemFont(ofSize: size)
        }

        return font
    }

    /// Medium(Regular) 타입 Apple 폰트
    public class func font_apple_r(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "AppleSDGothicNeo-Medium", size: size) else {
            return .systemFont(ofSize: size)
        }

        return font
    }
}
