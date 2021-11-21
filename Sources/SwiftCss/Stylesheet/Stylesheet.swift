//
//  Stylesheet.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

public struct Stylesheet {
    let rules: [Rule]

    public init(@RuleBuilder _ builder: () -> [Rule]) {
        self.rules = builder()
    }
}


//@media screen and (max-width: 599px) {
//    /* extra small device screens only < 600 */
//}
//@media screen and (min-width: 600px) {
//    /* small device screens: 600-899 */
//}
//@media screen and (min-width: 900px) {
//    /* "normal" device screens: 900-1199 */
//}
//@media screen and (min-width: 1200px) {
//    /* large device screens: 1200-1799 */
//}
//@media screen and (min-width: 1800px) {
//    /* extra large device screens: 1800+ */
//}
//@media (prefers-color-scheme: dark) {
//    /* dark mode */
//}
// standalone? pwa?
