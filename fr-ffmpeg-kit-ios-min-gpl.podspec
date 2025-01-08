Pod::Spec.new do |s|
  s.name             = 'fr-ffmpeg-kit-ios-min-gpl'
  s.version          = '6.0'
  s.summary          = 'FFmpeg Kit iOS Min GPL Shared Framework'
  s.description      = 'Includes FFmpeg with libvid.stab, x264, x265 and xvidcore libraries enabled.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.authors          = { 'ARTHENICA' => 'open-source@arthenica.com' }
  s.license          = { :type => 'GPL-3.0', :file => 'ffmpegkit.xcframework/ios-arm64_arm64e/ffmpegkit.framework/LICENSE' }
  s.platform         = :ios, '12.1'
  s.requires_arc     = true

  s.libraries        = ['z', 'bz2', 'c++', 'iconv']
  s.source           = { :http => 'https://github.com/Neil20170220/ffmpeg-kit/releases/download/v6.0/ffmpeg-kit-min-gpl-6.0-ios-xcframework.zip' }

  s.ios.frameworks   = ['AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox']
  
  s.vendored_frameworks = [
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/ffmpegkit.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libavcodec.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libavdevice.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libavfilter.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libavformat.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libavutil.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libswresample.xcframework',
    'ffmpeg-kit-min-gpl-6.0-ios-xcframework/libswscale.xcframework'
  ]
end
