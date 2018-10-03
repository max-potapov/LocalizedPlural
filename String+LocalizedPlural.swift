//
//  String+LocalizedPlural.swift
//  Pods
//
//  Created by Mikhail Akopov on 10/3/18.
//  Copyright © 2018 Mikhail Akopov. All rights reserved.
//

import Foundation

public extension String {
    
    public func localizedPlural(count: Int, tableName: String? = nil, comment: String? = nil) -> String {
        let language: SupportedLanguage = getLanguage() ?? .defaultLanguage
        let pluralRule = PluralRule(language: language, count: count)
        let key = String(format: "%%d %@ (plural rule: %@)", self, pluralRule.rawValue)
        return String(format: NSLocalizedString(key, tableName: tableName, bundle: Bundle.main, value: "", comment: comment ?? ""), count)
    }

    private func getLanguage() -> SupportedLanguage? {
        guard let languageCode = Bundle.main.preferredLocalizations.first, let language = SupportedLanguage(languageCode: languageCode) else {
            return nil
        }
        return language
    }
    
}
