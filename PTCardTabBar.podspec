#
# Be sure to run `pod lib lint PTCardTabBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PTCardTabBar'
  s.version          = '1.0.2'
  s.summary          = 'Simple UITabBarController with card-style tabbar'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A Simple Card style tab bar with only displaying icons with small circle under the selected tab bar, try it


                       DESC

  s.homepage         = 'https://github.com/hussc/PTCardTabBar'
  s.screenshots     = 'https://www.dropbox.com/s/1ra32nq4rxurqun/Simulator%20Screen%20Shot%20-%20iPhone%20Xs%20-%202019-09-04%20at%2004.43.09.png', 'https://www.dropbox.com/s/zrbah6zbxvkvn36/Simulator%20Screen%20Shot%20-%20iPhone%20Xs%20-%202019-09-04%20at%2004.43.10.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hussein AlRyalat' => 'hus.sc@aol.com' }
  s.source           = { :git => 'https://github.com/hussc/PTCardTabBar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.facebook.com/hussc'
  s.swift_version  = '5.0'
  s.ios.deployment_target = '11.0'

  s.source_files = 'PTCardTabBar/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PTCardTabBar' => ['PTCardTabBar/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
