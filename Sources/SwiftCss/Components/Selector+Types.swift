//
//  Selector+Types.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func Root(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(":root", builder)
}

public func All(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("*", builder)
}

public func Element(_ name: HTMLElement, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(name.rawValue, builder)
}

public func Id(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("#" + name, builder)
}

public func Class(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("." + name, builder)
}

public func Html(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.html, builder)
}

public func Body(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.body, builder)
}

public func Address(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.address, builder)
}

public func Article(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.article, builder)
}

public func Aside(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.aside, builder)
}

public func Footer(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.footer, builder)
}

public func Header(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.header, builder)
}

public func H1(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h1, builder)
}

public func H2(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h2, builder)
}

public func H3(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h3, builder)
}

public func H4(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h4, builder)
}

public func H5(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h5, builder)
}

public func H6(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.h6, builder)
}

public func Main(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.main, builder)
}

public func Nav(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.nav, builder)
}

public func Section(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.section, builder)
}

public func Blockquote(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.blockquote, builder)
}

public func Dd(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.dd, builder)
}

public func Div(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.div, builder)
}

public func Dl(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.dl, builder)
}

public func Dt(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.dt, builder)
}

public func Figcaption(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.figcaption, builder)
}

public func Figure(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.figure, builder)
}

public func Hr(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.hr, builder)
}

public func Li(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.li, builder)
}

public func Ol(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.ol, builder)
}

public func P(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.p, builder)
}

public func Pre(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.pre, builder)
}

public func Ul(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.ul, builder)
}

public func A(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.a, builder)
}

public func Abbr(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.abbr, builder)
}

public func B(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.b, builder)
}

public func Bdi(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.bdi, builder)
}

public func Bdo(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.bdo, builder)
}

public func Br(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.br, builder)
}

public func Cite(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.cite, builder)
}

public func Code(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.code, builder)
}

public func Data(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.data, builder)
}

public func Dfn(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.dfn, builder)
}

public func Em(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.em, builder)
}

public func I(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.i, builder)
}

public func Kbd(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.kbd, builder)
}

public func Mark(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.mark, builder)
}

public func Q(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.q, builder)
}

public func Ruby(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.ruby, builder)
}

public func S(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.s, builder)
}

public func Samp(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.samp, builder)
}

public func Small(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.small, builder)
}

public func Span(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.span, builder)
}

public func Strong(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.strong, builder)
}

public func Sub(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.sub, builder)
}

public func Sup(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.sup, builder)
}

public func Time(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.time, builder)
}

public func U(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.u, builder)
}

public func Var(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.var, builder)
}

public func Wbr(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.wbr, builder)
}

public func Area(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.area, builder)
}

public func Audio(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.html, builder)
}

public func Img(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.img, builder)
}

public func Map(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.map, builder)
}

public func Track(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.track, builder)
}

public func Video(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.video, builder)
}

public func Embed(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.embed, builder)
}

public func Iframe(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.iframe, builder)
}

public func Object(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.object, builder)
}

public func Param(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.param, builder)
}

public func Picture(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.picture, builder)
}

public func Portal(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.portal, builder)
}

public func Source(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.source, builder)
}

public func Svg(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.svg, builder)
}

public func Math(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.math, builder)
}

public func Canvas(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.canvas, builder)
}

public func Noscript(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.noscript, builder)
}

public func Script(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.script, builder)
}

public func Del(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.del, builder)
}

public func Ins(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.ins, builder)
}

public func Caption(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.caption, builder)
}

public func Col(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.col, builder)
}

public func Colgroup(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.colgroup, builder)
}

public func Table(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.table, builder)
}

public func Tbody(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.tbody, builder)
}

public func Td(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.td, builder)
}

public func Tfoot(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.tfoot, builder)
}

public func Th(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.th, builder)
}

public func Thead(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.thead, builder)
}

public func Tr(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.tr, builder)
}

public func Button(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.button, builder)
}

public func Datalist(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.datalist, builder)
}

public func Fieldset(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.fieldset, builder)
}

public func Form(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.form, builder)
}

public func Input(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.input, builder)
}

public func Label(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.label, builder)
}

public func Legend(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.legend, builder)
}

public func Meter(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.meter, builder)
}

public func Optgroup(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.optgroup, builder)
}

public func Option(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.option, builder)
}

public func Output(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.output, builder)
}

public func Progress(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.progress, builder)
}

public func Select(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.select, builder)
}

public func Textarea(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.textarea, builder)
}

public func Details(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.details, builder)
}

public func Dialog(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.dialog, builder)
}

public func Menu(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.menu, builder)
}

public func Summary(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.summary, builder)
}

public func Slot(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.slot, builder)
}

public func Template(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Element(.template, builder)
}
