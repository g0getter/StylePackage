//
//  NSMutableAttributedString.swift
//  Extensions
//
//  Created by 여나경 on 2021/09/02.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    // MARK: - Styled String
    func regular(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 굵게
    func bold(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.boldSystemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font] // attribute를 완성
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 기울임꼴
    func italic(_ string: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.italicSystemFont(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
    
    /// 밑줄
    func underlined(_ value: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .underlineStyle : NSUnderlineStyle.single.rawValue
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    // MARK: - 여백
    /// 자간
    func kern(_ value: String, fontSize: CGFloat, kernValue: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .kern: kernValue,            
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    // MARK: - Color
    /// 글자색 지정
    func colored(_ value: String, fontSize: CGFloat, fontColor: UIColor) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .foregroundColor: fontColor,
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    /// `highlightColor`색으로 하이라이트 표시. 글자 색(foregroundColor)는 흰색.
    func highlight(_ value: String, fontSize: CGFloat, highlightColor: UIColor) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes:[NSAttributedString.Key : Any] = [
            .font: font,
            .foregroundColor: UIColor.white,
            .backgroundColor: highlightColor,
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    // MARK: - LineSpace
    /// 줄간격 설정. `value`의 아래쪽 간격이 설정됨.
    func lineSpaced(_ value: String, _ spacing: CGFloat) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacing
        let attributedString = NSAttributedString(string: value, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        self.append(attributedString)
        return self
    }
    
    // MARK: - Image 삽입
    /// Inserts an image into an attributed string. <- using `NSTextAttachment`
    // TODO: 높이(크기) 설정. 폰트와 같은 높이로?
    func appendImage(_ image: UIImage?) -> NSMutableAttributedString {
        guard image != nil else { return self }
        let imageAttachment: NSTextAttachment = NSTextAttachment()
        imageAttachment.image = image
        let string: NSAttributedString = NSAttributedString(attachment: imageAttachment)
        self.append(string)
        return self
    }
}


// TODO: Alignment, font, attachIcon 높이 이용해 심화
