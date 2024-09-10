# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

plugin 'cocoapods-binary-cache'

config_cocoapods_binary_cache(
  cache_repo: {
    'default' => {
      'remote' => 'git@github.com:92pino/CocoapodsBinaryCache.git',
      'local' => '~/.cocoapods-binary-cache/prebuilt-frameworks'
    }
  },
  prebuild_config: 'Debug',
  device_build_enabled: true
)

target 'ReactorKitDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ReactorKitDemo
  # Architecture
  pod 'RIBs', :git => 'https://github.com/ElonPark/RIBs.git', :branch => 'mockolo', :binary => true
  pod 'ReactorKit', :binary => true

  # DI
  pod 'NeedleFoundation', :binary => true

  # Rx
  pod 'RxSwift', :binary => true
  pod 'RxCocoa', :binary => true

  # Network
  pod 'Alamofire', :binary => true
  pod 'Moya/RxSwift', '~> 15.0', :binary => true
  pod 'RxReachability', '~> 1.2.1', :binary => true

  # UI
  pod 'SnapKit', :binary => true
  pod 'SkeletonView', :binary => true
  pod 'RxDataSources', :binary => true
  pod 'RxViewController', :binary => true

  # Image
  pod 'Kingfisher', :binary => true

  # ETC
  pod 'EPLogger', :binary => true

  target 'ReactorKitDemoTests' do
    inherit! :search_paths
    
    pod 'Nimble', :binary => true
    pod 'RxBlocking', :binary => true
    pod 'RxTest', :binary => true
  end

  target 'ReactorKitDemoUITests' do
    # Pods for testing
  end

end
