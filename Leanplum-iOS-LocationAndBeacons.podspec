Pod::Spec.new do |s|
  s.name = 'Leanplum-iOS-LocationAndBeacons'
  s.version = '2.2.5-beta.11'
  s.summary = 'Supplementary Leanplum pod to provide geofencing and iBeacons support.'
  s.description = 'Use LeanplumLocation instead if you do not need support for iBeacons.'
  s.homepage = 'https://www.leanplum.com'
  s.license = { :type => 'Commercial', :text => 'See https://www.leanplum.com/tos' }
  s.author = { 'Leanplum' => 'support@leanplum.com' }
  s.social_media_url = 'https://twitter.com/leanplum'
  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.source = { :git => 'https://github.com/Leanplum/Leanplum-iOS-Location.git', :tag => s.version.to_s}
  s.source_files = 'Leanplum-iOS-Location/Classes/**/*'
  s.frameworks = 'CoreLocation'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'BITCODE_GENERATION_MODE' => 'bitcode' }
  s.documentation_url = 'https://www.leanplum.com/docs#/docs'
  s.dependency 'Leanplum-iOS-SDK'
  s.module_name = 'LeanplumLocationAndBeacons'
  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LP_BEACON=1' }
end
