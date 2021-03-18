# Podfile
use_frameworks!

source ‘https://github.com/CocoaPods/Specs.git'
platform :ios, ‘12.0’
use_frameworks!
target ‘DevMood’ do
  pod 'RxSwift', '6.1.0'
  pod 'RxCocoa', '6.1.0'
  pod ‘SnapKit’, ‘~> 0.15.0’
end

# RxTest and RxBlocking make the most sense in the context of unit/integration tests
target 'DevMoodTests' do
    pod 'RxBlocking', '6.1.0'
    pod 'RxTest', '6.1.0'
end