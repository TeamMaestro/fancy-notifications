
  Pod::Spec.new do |s|
    s.name = 'FancyNotifications'
    s.version = '0.0.2'
    s.summary = 'Local notifications for capacitor'
    s.license = 'MIT'
    s.homepage = 'https://github.com/triniwiz/fancy-notifications.git'
    s.author = 'Osei Fortune'
    s.source = { :git => 'https://github.com/triniwiz/fancy-notifications.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end