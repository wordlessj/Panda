//
//  NSLayoutManager.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSLayoutManager {
    @discardableResult
    public func textStorage(_ value: NSTextStorage?) -> PandaChain {
        object.textStorage = value
        return self
    }

    @discardableResult
    public func delegate(_ value: NSLayoutManagerDelegate?) -> PandaChain {
        object.delegate = value
        return self
    }

    @discardableResult
    public func showsInvisibleCharacters(_ value: Bool) -> PandaChain {
        object.showsInvisibleCharacters = value
        return self
    }

    @discardableResult
    public func showsControlCharacters(_ value: Bool) -> PandaChain {
        object.showsControlCharacters = value
        return self
    }

    @discardableResult
    public func hyphenationFactor(_ value: CGFloat) -> PandaChain {
        object.hyphenationFactor = value
        return self
    }

    @discardableResult
    public func usesFontLeading(_ value: Bool) -> PandaChain {
        object.usesFontLeading = value
        return self
    }

    @discardableResult
    public func allowsNonContiguousLayout(_ value: Bool) -> PandaChain {
        object.allowsNonContiguousLayout = value
        return self
    }

    @discardableResult
    public func glyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> PandaChain {
        object.setGlyphs(glyphs, properties: props, characterIndexes: charIndexes, font: aFont, forGlyphRange: glyphRange)
        return self
    }

    @discardableResult
    public func textContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange) -> PandaChain {
        object.setTextContainer(container, forGlyphRange: glyphRange)
        return self
    }

    @discardableResult
    public func lineFragmentRect(_ fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect) -> PandaChain {
        object.setLineFragmentRect(fragmentRect, forGlyphRange: glyphRange, usedRect: usedRect)
        return self
    }

    @discardableResult
    public func extraLineFragmentRect(_ fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer) -> PandaChain {
        object.setExtraLineFragmentRect(fragmentRect, usedRect: usedRect, textContainer: container)
        return self
    }

    @discardableResult
    public func location(_ location: CGPoint, forStartOfGlyphRange glyphRange: NSRange) -> PandaChain {
        object.setLocation(location, forStartOfGlyphRange: glyphRange)
        return self
    }

    @discardableResult
    public func notShownAttribute(_ flag: Bool, forGlyphAt glyphIndex: Int) -> PandaChain {
        object.setNotShownAttribute(flag, forGlyphAt: glyphIndex)
        return self
    }

    @discardableResult
    public func drawsOutsideLineFragment(_ flag: Bool, forGlyphAt glyphIndex: Int) -> PandaChain {
        object.setDrawsOutsideLineFragment(flag, forGlyphAt: glyphIndex)
        return self
    }

    @discardableResult
    public func attachmentSize(_ attachmentSize: CGSize, forGlyphRange glyphRange: NSRange) -> PandaChain {
        object.setAttachmentSize(attachmentSize, forGlyphRange: glyphRange)
        return self
    }
}
