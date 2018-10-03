//
//  PluralRule.swift
//  Pods
//
//  Created by Mikhail Akopov on 10/3/18.
//  Copyright © 2018 Mikhail Akopov. All rights reserved.
//

enum PluralRule: String {
    case zero
    case one
    case two
    case few
    case many
    case other
    
    init(language: SupportedLanguage, count: Int) {
        switch language {
        case .arabic:
            self = .makeArabic(count: count)
        case .bulgarian:
            self = .makeBulgarian(count: count)
        case .catalan:
            self = .makeCatalan(count: count)
        case .simplifiedChinese:
            self = .makeSimplifiedChinese(count: count)
        case .traditionalChinese:
            self = .makeTraditionalChinese(count: count)
        case .croatian:
            self = .makeCroatian(count: count)
        case .czech:
            self = .makeCzech(count: count)
        case .danish:
            self = .makeDanish(count: count)
        case .dutch:
            self = .makeDutch(count: count)
        case .english:
            self = .makeEnglish(count: count)
        case .french:
            self = .makeFrench(count: count)
        case .german:
            self = .makeGerman(count: count)
        case .finnish:
            self = .makeFinnish(count: count)
        case .greek:
            self = .makeGreek(count: count)
        case .hebrew:
            self = .makeHebrew(count: count)
        case .hungarian:
            self = .makeHungarian(count: count)
        case .indonesian:
            self = .makeIndonesian(count: count)
        case .italian:
            self = .makeItalian(count: count)
        case .japanese:
            self = .makeJapanese(count: count)
        case .korean:
            self = .makeKorean(count: count)
        case .latvian:
            self = .makeLatvian(count: count)
        case .malay:
            self = .makeMalay(count: count)
        case .norwegianBokmal:
            self = .makeNorwegianBokmal(count: count)
        case .norwegianNynorsk:
            self = .makeNorwegianNynorsk(count: count)
        case .polish:
            self = .makePolish(count: count)
        case .portuguese:
            self = .makePortuguese(count: count)
        case .romanian:
            self = .makeRomanian(count: count)
        case .russian:
            self = .makeRussian(count: count)
        case .spanish:
            self = .makeSpanish(count: count)
        case .serbian:
            self = .makeSerbian(count: count)
        case .slovak:
            self = .makeSlovak(count: count)
        case .slovenian:
            self = .makeSlovenian(count: count)
        case .swedish:
            self = .makeSwedish(count: count)
        case .thai:
            self = .makeThai(count: count)
        case .turkish:
            self = .makeTurkish(count: count)
        case .ukrainian:
            self = .makeUkrainian(count: count)
        case .vietnamese:
            self = .makeVietnamese(count: count)
        }
    }
    
    private static func makeArabic(count: Int) -> PluralRule {
        switch count {
        case 0:
            return .zero
        case 1:
            return .one
        case 2:
            return .two
        default:
            switch count.mod100 {
            case 0 ... 2:
                return .other
            case 3 ... 10:
                return .few
            default:
                return .many
            }
        }
    }
    
    private static func makeBulgarian(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeSimplifiedChinese(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeTraditionalChinese(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeCatalan(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeCroatian(count: Int) -> PluralRule {
        switch count.mod10 {
        case 1:
            return count.mod100 == 11 ? .many : .one
        case 2 ... 4:
            switch count.mod100 {
            case 12 ... 14:
                return .many
            default:
                return .few
            }
        default:
            return .many
        }
    }
    
    private static func makeCzech(count: Int) -> PluralRule {
        switch count {
        case 1:
            return .one
        case 2 ... 4:
            return .few
        default:
            return .other
        }
    }
    
    private static func makeEnglish(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeFrench(count: Int) -> PluralRule {
        switch count {
        case 0 ... 1:
            return .one
        default:
            return .other
        }
    }
    
    private static func makeGerman(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeDanish(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeDutch(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeFinnish(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeGreek(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeHebrew(count: Int) -> PluralRule {
        switch count {
        case 1:
            return .one
        case 2:
            return .two
        case 3 ... 10:
            return .other
        default:
            return count.mod10 == 0 ? .many : .other
        }
    }
    
    private static func makeHungarian(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeIndonesian(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeItalian(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeJapanese(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeKorean(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeLatvian(count: Int) -> PluralRule {
        switch count {
        case 0:
            return .zero
        case 1:
            return .one
        default:
            if count.mod10 == 1 {
                if count.mod100 != 11 {
                    return .one
                }
            }
            return .many
        }
    }
    
    private static func makeMalay(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeNorwegianBokmal(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeNorwegianNynorsk(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makePolish(count: Int) -> PluralRule {
        if count == 1 {
            return .one
        }
        switch count.mod10 {
        case 2 ... 4:
            switch count.mod100 {
            case 12 ... 14:
                return .many
            default:
                return .few
            }
        default:
            return .many
        }
    }
    
    private static func makePortuguese(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeRomanian(count: Int) -> PluralRule {
        switch count {
        case 0:
            return .few
        case 1:
            return .one
        default:
            switch count.mod100 {
            case 2 ... 19:
                return .few
            default:
                return .other
            }
        }
    }
    
    private static func makeRussian(count: Int) -> PluralRule {
        switch count.mod100 {
        case 11 ... 14:
            return .many
        default:
            switch count.mod10 {
            case 1:
                return .one
            case 2 ... 4:
                return .few
            default:
                return .many
            }
        }
    }
    
    private static func makeSerbian(count: Int) -> PluralRule {
        switch count {
        case 1:
            return .one
        case 2 ... 4:
            return .few
        default:
            return .other
        }
    }
    
    private static func makeSlovak(count: Int) -> PluralRule {
        switch count {
        case 1:
            return .one
        case 2 ... 4:
            return .few
        default:
            return .other
        }
    }
    
    private static func makeSlovenian(count: Int) -> PluralRule {
        switch count.mod100 {
        case 1:
            return .one
        case 2:
            return .two
        case 3 ... 4:
            return .few
        default:
            return .other
        }
    }
    
    private static func makeSpanish(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeSwedish(count: Int) -> PluralRule {
        return makeDefault(count: count)
    }
    
    private static func makeThai(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeTurkish(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeUkrainian(count: Int) -> PluralRule {
        switch count.mod100 {
        case 11 ... 14:
            return .many
        default:
            switch count.mod10 {
            case 1:
                return .one
            case 2 ... 4:
                return .few
            default:
                return .many
            }
            
        }
    }
    
    private static func makeVietnamese(count: Int) -> PluralRule {
        return .other
    }
    
    private static func makeDefault(count: Int) -> PluralRule {
        switch count {
        case 1:
            return .one
        default:
            return .other
        }
    }
}

private extension Int {
    
    var mod10: Int {
        return self % 10
    }
    
    var mod100: Int {
        return self % 100
    }
    
}
