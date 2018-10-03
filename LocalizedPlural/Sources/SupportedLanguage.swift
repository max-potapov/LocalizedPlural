//
//  SupportedLanguage.swift
//  Pods
//
//  Created by Mikhail Akopov on 10/3/18.
//  Copyright © 2018 Mikhail Akopov. All rights reserved.
//

enum SupportedLanguage: String, CaseIterable {
    case arabic = "ar"
    case bulgarian = "bg"
    case catalan = "ca"
    case simplifiedChinese = "zh-Hans"
    case traditionalChinese = "zh-Hant"
    case croatian = "cr"
    case czech = "cs"
    case danish = "da"
    case dutch = "nl"
    case english = "en"
    case french = "fr"
    case german = "de"
    case finnish = "fi"
    case greek = "el"
    case hebrew = "he"
    case hungarian = "hu"
    case indonesian = "id"
    case italian = "it"
    case japanese = "ja"
    case korean = "ko"
    case latvian = "lv"
    case malay = "ms"
    case norwegianBokmal = "nb"
    case norwegianNynorsk = "nn"
    case polish = "pl"
    case portuguese = "pt"
    case romanian = "ro"
    case russian = "ru"
    case spanish = "es"
    case serbian = "sr"
    case slovak = "sk"
    case slovenian = "sl"
    case swedish = "sv"
    case thai = "th"
    case turkish = "tr"
    case ukrainian = "uk"
    case vietnamese = "vi"
    
    init?(languageCode: String) {
        for language in SupportedLanguage.allCases {
            if languageCode.hasPrefix(language.rawValue) {
                self = language
                break
            }
        }
        return nil
    }
    
    static var defaultLanguage: SupportedLanguage = .english
}
