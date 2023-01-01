#
# Be sure to run `pod lib lint AlipaySDK-noutdid-in-xcframework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlipaySDK-noutdid-in-xcframework'
  s.version          = '5.8.11.1'
  s.summary          = 'A xcframework based AlipaySDK Support M1 simulator'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This pod is built for alipay-noutdid
  Please see https://github.com/yorkzero831/AlipaySDK-in-xcframework
                       DESC

  s.homepage         = 'https://github.com/yorkzero831/AlipaySDK-in-xcframework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                        Copyright (c) 2023 yorkzero8312 <yorkzero8312@gmail.com>

                        Permission is hereby granted, free of charge, to any person obtaining a copy
                        of this software and associated documentation files (the "Software"), to deal
                        in the Software without restriction, including without limitation the rights
                        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                        copies of the Software, and to permit persons to whom the Software is
                        furnished to do so, subject to the following conditions:
                        
                        The above copyright notice and this permission notice shall be included in
                        all copies or substantial portions of the Software.
                        
                        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
                        THE SOFTWARE.
                        LICENSE
                       }
  s.author           = { 'yorkzero8312' => 'yorkzero8312@gmail.com' }
  s.source           = { :http => 'https://github.com/yorkzero831/AlipaySDK-in-xcframework/releases/download/v15.8.11/alipay-noutdid.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  platform = :ios
  

  s.ios.deployment_target = '14.0'

  # s.source_files = 'AlipaySDK-in-xcframework/Classes/**/*'

  s.vendored_frameworks = 'output/alipay-noutdid/AlipaySDK.xcframework'
  s.resource = 'output/alipay-noutdid/AlipaySDK.bundle'

  s.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'CoreText', 'WebKit'
  s.libraries = 'c++', 'z'

  s.subspec 'lint' do |l|
    l.dependency  'UTDID'
  end
  
  # s.resource_bundles = {
  #   'AlipaySDK-in-xcframework' => ['AlipaySDK-in-xcframework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
