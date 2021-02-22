//
//  String+LocalizedPlural.swift
//  LocalizedPlural
//
//  Created by Mikhail Akopov on 10/3/18.
//  Copyright © 2018 Mikhail Akopov. All rights reserved.
//

import Foundation

public extension String {
    func localizedPlural(for bundle: Bundle, count: Int, tableName: String? = nil, comment: String? = nil) -> String {
        let language: SupportedLanguage = getLanguage(for: bundle) ?? .defaultLanguage
        let pluralRule = PluralRule(language: language, count: count)
        let key = String(format: "%%d %@ (plural rule: %@)", self, pluralRule.rawValue)
        return String(format: NSLocalizedString(key, tableName: tableName, bundle: bundle, value: "", comment: comment ?? ""), count)
    }

    private func getLanguage(for bundle: Bundle) -> SupportedLanguage? {
        guard
            let languageCode = bundle.preferredLocalizations.first,
            let language = SupportedLanguage(languageCode: languageCode)
        else {
            return nil
        }
        return language
    }
}
