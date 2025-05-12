Pod::Spec.new do |s|
  s.name             = 'fr-ffmpeg-kit-ios-min-gpl'
  s.version          = '6.0.1'
  s.summary          = 'FFmpeg Kit iOS Min GPL Shared Framework'
  s.description      = 'Includes FFmpeg with libvid.stab, x264, x265 and xvidcore libraries enabled.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.authors          = { 'ARTHENICA' => 'open-source@arthenica.com' }
  s.license          = { :type => 'GPL-3.0', :file => 'ffmpegkit.xcframework/ios-arm64_arm64e/ffmpegkit.framework/LICENSE' }
  s.platform         = :ios, '12.1'
  s.requires_arc     = true

  s.libraries        = ['z', 'bz2', 'c++', 'iconv']
  s.source           = { :http => 'https://github.com/Neil20170220/ffmpeg-kit/releases/download/v6.0.1/bundle-apple-xcframework-ios.zip' }

  s.ios.frameworks   = ['AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox']
  
  s.vendored_frameworks = [
    'bundle-apple-xcframework-ios/ffmpegkit.xcframework',
    'bundle-apple-xcframework-ios/libavcodec.xcframework',
    'bundle-apple-xcframework-ios/libavdevice.xcframework',
    'bundle-apple-xcframework-ios/libavfilter.xcframework',
    'bundle-apple-xcframework-ios/libavformat.xcframework',
    'bundle-apple-xcframework-ios/libavutil.xcframework',
    'bundle-apple-xcframework-ios/libswresample.xcframework',
    'bundle-apple-xcframework-ios/libswscale.xcframework'
  ]
end
