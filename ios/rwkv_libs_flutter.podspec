Pod::Spec.new do |s|
    s.name             = 'rwkv_libs'
    s.version          = '0.0.1'
    s.summary          = 'rwkv_libs plugin for Flutter apps.'
    s.description      = <<-DESC
  rwkv_libs plugin for Flutter apps.
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Your Company' => 'email@example.com' }
    s.frameworks       = 'Accelerate', 'CoreML'

    s.source           = { :path => '.' }
    # s.source_files = 'Classes/**/*'
    s.dependency 'Flutter'
    s.preserve_paths = '*.a'

    s.xcconfig = {
      'OTHER_LDFLAGS' => '-all_load -lrwkv_mobile -lncnn -lMLXModelFFI',
      'DEAD_CODE_STRIPPING' => 'NO',
      "STRIP_INSTALLED_PRODUCT" => "NO",
    }
    s.vendored_libraries = 'librwkv_mobile.a', 'libncnn.a', 'libMLXModelFFI.a'
    # s.vendored_frameworks = 'librwkv_mobile.xcframework', 'libweb_rwkv_ffi.xcframework'
    s.platform = :ios, '16.0'
    s.static_framework = true
    s.resources =['mlx-swift_Cmlx.bundle']
  
    # Flutter.framework does not contain a i386 slice.
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.swift_version = '5.0'
  end
