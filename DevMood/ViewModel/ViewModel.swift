//
//  ViewModel.swift
//  DevMood
//
//  Created by mac on 2021/03/18.
//

import Foundation
import RxCocoa
import RxSwift

protocol ViewModelType {
  var tap: PublishRelay<Void> { get }
  var number: Driver<String> { get }
}

final class ViewModel: ViewModelType {
    // input
    var tap: PublishRelay<Void>
    // output
    var number: Driver<String>
    
    private let model = BehaviorRelay<Model>(value: .init(number: 100))
    let disposeBag = DisposeBag()
    
    init() {
        self.number = self.model
            .map { "\($0.number)" }
            .asDriver(onErrorRecover: { _ -> Driver<String> in
                .empty()
            })
        
//        self.tap
//            .withLatestFrom(model)
//            .map { model -> Model in
//                var nextModel = model
//                nextModel.number += 1
//                return nextModel
//            }.bind(to: self.model)
//             .disposed(by: disposeBag)
//    }
}
    
//  // input
//  let tap = PublishRelay<Void>()
//
//  // output
//  let number: Driver<String>
//
//  private let model = BehaviorRelay<Model>(value: .init(number: 100))
//
//  let disposeBag = DisposeBag()
//
//  init() {
//    self.number = self.model
//      .map { "\($0.number)" }
//      .asDriver(onErrorRecover: { _ in .empty() })
//
//    self.tap
//      .withLatestFrom(model)
//      .map { model -> Model in
//        var nextModel = model
//        nextModel.number += 1
//        return nextModel
//      }.bind(to: self.model)
//      .disposed(by: disposeBag)
//  }

