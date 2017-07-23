#
# Be sure to run `pod lib lint SwaggerClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "SwaggerClient"
    s.version          = "1.0.0"

    s.summary          = "QuantiModo"
    s.description      = <<-DESC
                         QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do), check out our [docs](https://github.com/QuantiModo/docs) or contact us at [help.quantimo.do](https://help.quantimo.do). 
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "Apache License, Version 2.0"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Swagger" => "apiteam@swagger.io" }

    s.source_files = 'SwaggerClient/**/*.{m,h}'
    s.public_header_files = 'SwaggerClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.4'
    s.dependency 'ISO8601', '~> 0.5'
end

