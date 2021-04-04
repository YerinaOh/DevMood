//
//  ViewModel.swift
//  DevMood
//
//  Created by mac on 2021/03/18.
//

import Foundation
import RxCocoa
import RxSwift

protocol AnnounceViewModelProtocol: class {
    var announce: String? { get }
    var moodDidChange: ((AnnounceViewModelProtocol) -> ())? { get set }
    init(mood: Mood)
    func showAnnounce()
}

final class AnnounceViewModel: AnnounceViewModelProtocol {
    
    var mood: Mood?
    
    var moodDidChange: ((AnnounceViewModelProtocol) -> ())?
    
    var announce: String? {
        didSet {
            self.moodDidChange?(self)
        }
    }
    
    required init(mood: Mood) {
        self.mood = mood
    }
    
    func showAnnounce() {
        self.announce = self.mood?.level ?? "아무것도 없어!"
    }
}
