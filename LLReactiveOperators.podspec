Pod::Spec.new do |s|
    s.name = 'LLReactiveOperators'
    s.version = '0.0.1'
    s.summary = 'Some additional fun for ReactiveCocoa.'
    s.license = {
      :type => 'MIT',
      :file => 'LICENSE'
    }
    s.source = { :git => 'https://github.com/lawrencelomax/LLReactiveOperators.git', :commit => '0c945260a404d5b685ea8dd4a21badcc27b8a31b' }
    s.author = 'Lawrence Lomax'
    s.homepage = 'https://github.com/lawrencelomax/LLReactiveOperators'
    s.platform = :ios, '5.0'
    s.source_files = 'LLReactiveOperators/Classes/'
    s.requires_arc = true
    
    s.dependency 'ReactiveCocoa'
end