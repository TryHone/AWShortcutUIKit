

Pod::Spec.new do |s|
  s.name             = 'AWShortcutUIKit'
  s.version          = '0.1.0'
  s.summary          = 'UIKit chain call, simplified property settings and event settings'
  s.description      = <<-DESC
   UIKit chain call, simplified property settings and event settings,
very useful 
                       DESC

  s.homepage         = 'https://github.com/TryHone/AWShortcutUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AlanWang' => '1075789745@qq.com' }
  s.source           = { :git => 'https://github.com/TryHone/AWShortcutUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://github.com/TryHone/AWShortcutUIKit.git'

  s.ios.deployment_target = '7.0'

  s.source_files = 'AWShortcutUIKit/Classes/**/*'
  
end
