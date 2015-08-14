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
                         QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications.\n[Learn about QuantiModo](https://app.quantimo.do) or contact us at [help.quantimo.do](https://help.quantimo.do).\n\n\n\n Create an account at [QuantiModo](https://app.quantimo.do), sign in, and\nadd\n\n\nsome data at https://app.quantimo.do/connect to try out the API for yourself.  As long as you&#39;re signed in, it will use your browser&#39;s cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.source_files = 'SwaggerClient/**/*'
    s.public_header_files = 'SwaggerClient/**/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
end

