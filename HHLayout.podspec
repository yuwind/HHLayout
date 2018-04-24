Pod::Spec.new do |s|
  s.name         = 'HHProperty' 
  s.version      = '1.0.0'
  s.summary      = 'Layout'
  s.s.description = 'Lightweight automatic layout, support for multi-level mapping'
  s.homepage     = 'https://github.com/yuwind/HHLayout/wiki'
  s.license      = 'MIT'
  s.author       = { 'yuwind' => '991810133@qq.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/yuwind/HHLayout.git", :tag => s.version}
  s.source_files = 'HHLayout/*.{h,m}'
  s.requires_arc = true

end
