import 'package:flutter/widgets.dart';

class IcpStrings {
  IcpStrings._();

  static Locale _normalize(Locale locale) {
    final language = locale.languageCode.toLowerCase();
    final country = (locale.countryCode ?? '').toUpperCase();
    if (language == 'zh') {
      if (country == 'CN' || country == 'SG') return const Locale('zh', 'CN');
      if (country == 'TW') return const Locale('zh', 'TW');
      if (country == 'HK' || country == 'MO') return const Locale('zh', 'HK');
      // default to Simplified
      return const Locale('zh', 'CN');
    }
    return const Locale('en');
  }

  static IcpStrings of(BuildContext context) {
    final locale = Localizations.maybeLocaleOf(context) ?? const Locale('en');
    final norm = _normalize(locale);
    final key = '${norm.languageCode}_${norm.countryCode ?? ''}'.trim();
    switch (key) {
      case 'zh_CN':
        return _zhCN;
      case 'zh_TW':
        return _zhTW;
      case 'zh_HK':
        return _zhHK;
      default:
        return _en;
    }
  }

  // Titles
  String get titleColors => 'Colors';
  String get opacity => 'OPACITY';

  // Tabs
  String get tabGrid => 'Grid';
  String get tabSpectrum => 'Spectrum';
  String get tabSliders => 'Sliders';

  // Actions
  String get delete => 'Delete';
  String get displayP3Hex => 'P3 Hex Color #';

  // Track labels
  String trackLabel(String key) {
    switch (key) {
      case 'hue':
        return 'HUE';
      case 'saturation':
      case 'saturationForHSL':
        return 'SATURATION';
      case 'value':
        return 'VALUE';
      case 'lightness':
        return 'LIGHTNESS';
      case 'red':
        return 'RED';
      case 'green':
        return 'GREEN';
      case 'blue':
        return 'BLUE';
      case 'alpha':
        return 'ALPHA';
      default:
        return key.toUpperCase();
    }
  }
}

class _IcpStringsEn extends IcpStrings {
  _IcpStringsEn() : super._();
}

class _IcpStringsZhCN extends IcpStrings {
  _IcpStringsZhCN() : super._();
  @override
  String get titleColors => '颜色';
  @override
  String get opacity => '不透明度';
  @override
  String get tabGrid => '网格';
  @override
  String get tabSpectrum => '光谱';
  @override
  String get tabSliders => '滑块';
  @override
  String get delete => '删除';
  @override
  String get displayP3Hex => 'P3 Hex Color #';
  @override
  String trackLabel(String key) {
    switch (key) {
      case 'hue':
        return '色相';
      case 'saturation':
      case 'saturationForHSL':
        return '饱和度';
      case 'value':
        return '明度';
      case 'lightness':
        return '亮度';
      case 'red':
        return '红';
      case 'green':
        return '绿';
      case 'blue':
        return '蓝';
      case 'alpha':
        return '透明度';
      default:
        return super.trackLabel(key);
    }
  }
}

class _IcpStringsZhTW extends IcpStrings {
  _IcpStringsZhTW() : super._();
  @override
  String get titleColors => '顏色';
  @override
  String get opacity => '不透明度';
  @override
  String get tabGrid => '網格';
  @override
  String get tabSpectrum => '光譜';
  @override
  String get tabSliders => '滑桿';
  @override
  String get delete => '刪除';
  @override
  String get displayP3Hex => 'P3 Hex Color #';
  @override
  String trackLabel(String key) {
    switch (key) {
      case 'hue':
        return '色相';
      case 'saturation':
      case 'saturationForHSL':
        return '飽和度';
      case 'value':
        return '明度';
      case 'lightness':
        return '亮度';
      case 'red':
        return '紅';
      case 'green':
        return '綠';
      case 'blue':
        return '藍';
      case 'alpha':
        return '透明度';
      default:
        return super.trackLabel(key);
    }
  }
}

class _IcpStringsZhHK extends _IcpStringsZhTW {
  _IcpStringsZhHK() : super();
}

// Singletons
final _en = _IcpStringsEn();
final _zhCN = _IcpStringsZhCN();
final _zhTW = _IcpStringsZhTW();
final _zhHK = _IcpStringsZhHK();
