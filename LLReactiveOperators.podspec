Pod::Spec.new do |s|
    s.name = 'LLReactiveOperators'
    s.version = '0.0.1'
    s.summary = 'Some additional fun for ReactiveCocoa.'
    s.license = {
      :type => 'MIT',
      :file => 'LICENSE'
    }
    s.source = { :git => 'https://github.com/lawrencelomax/LLReactiveOperators.git', :commit => 'f32fc6c4b3bcf9a80ba8f3c6716d9012f4db88a6' }
    s.author = 'Lawrence Lomax'
    s.homepage = 'https://github.com/lawrencelomax/LLReactiveOperators'
    s.platform = :ios, '5.0'
    s.source_files = 'LLReactiveOperators/Classes/'
    s.requires_arc = true
    
    s.dependency 'ReactiveCocoa'
end