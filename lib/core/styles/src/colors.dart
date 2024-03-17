// ignore_for_file: non_constant_identifier_names, public_member_api_docs

import 'package:flutter/material.dart';

extension ColorsContext on BuildContext {
  T dynamicAnyStyle<T>({required T light, required T dark}) {
    return (Theme.of(this).brightness == Brightness.light) ? light : dark;
  }

  Color get c_overlay_with_opacity => dynamicAnyStyle(
        light: const Color(0x6F090909),
        dark: const Color(0x6F090909),
      );

  Color get c_purple => dynamicAnyStyle(
        light: const Color(0xFF923CE8),
        dark: const Color(0xFF923CE8),
      );



  Color get c_purple_event_title_online => dynamicAnyStyle(
    light: const Color(0xFF7F56D9),
    dark: const Color(0xFF7F56D9),
  );

  Color get c_purple_event_time_online => dynamicAnyStyle(
    light: const Color(0xFFB692F6),
    dark: const Color(0xFFB692F6),
  );

  Color get c_purple_todo_title_color => dynamicAnyStyle(
    light: const Color(0xFF051B44),
    dark: const Color(0xFF051B44),
  );

  Color get c_tiffany => dynamicAnyStyle(
        light: const Color(0xFF00C8C8),
        dark: const Color(0xFF00C8C8),
      );

  Color get c_tiffany_online_event_title => dynamicAnyStyle(
    light: const Color(0xFF00ADAD),
    dark: const Color(0xFF00ADAD),
  );



  Color get c_tiffany_background => dynamicAnyStyle(
        light: const Color(0xFFE6FAFA),
        dark: const Color(0xFFE6FAFA),
      );

  Color get c_purple_background => dynamicAnyStyle(
        light: const Color(0xFFF5ECFD),
        dark: const Color(0xFFF5ECFD),
      );

  Color get c_blue => dynamicAnyStyle(
        light: const Color(0xFF3C85E8),
        dark: const Color(0xFF3C85E8),
      );

  Color get c_blue_container => dynamicAnyStyle(
        light: const Color(0xFFE2EDFC),
        dark: const Color(0xFFE2EDFC),
      );

  Color get c_blue_disabled => dynamicAnyStyle(
        light: const Color(0xFF77AAEF),
        dark: const Color(0xFF77AAEF),
      );

  Color get c_blue_menu_button => dynamicAnyStyle(
        light: const Color(0xFF1F68CA),
        dark: const Color(0xFF1F68CA),
      );

  Color get c_blue_calendar_menu_button_background_online => dynamicAnyStyle(
        light: const Color(0xFFF9F5FF),
        dark: const Color(0xFFF9F5FF),
      );
  Color get c_green_calendar_menu_button_background_offline => dynamicAnyStyle(
        light: const Color(0xFFE6FAFA),
        dark: const Color(0xFFE6FAFA),
      );

  Color get c_green_calendar_event_title_offline => dynamicAnyStyle(
    light: const Color(0xFF00ADAD),
    dark: const Color(0xFF00ADAD),
  );

  Color get c_green_calendar_event_date_offline => dynamicAnyStyle(
    light: const Color(0xFF31C8C8),
    dark: const Color(0xFF31C8C8),
  );



  Color get c_blue_calendar_online_event_border => dynamicAnyStyle(
        light: const Color(0xFFE9D7FE),
        dark: const Color(0xFFE9D7FE),
      );


  Color get c_green => dynamicAnyStyle(
        light: const Color(0xFF59CD8C),
        dark: const Color(0xFF59CD8C),
      );


  Color get c_green_calendar_offline_event_border => dynamicAnyStyle(
    light: const Color(0xFFB4EEEE),
    dark: const Color(0xFFB4EEEE),
  );

  Color get c_green_indicatior => dynamicAnyStyle(
        light: const Color(0xFF00C8C8),
        dark: const Color(0xFF00C8C8),
      );

  Color get c_text => dynamicAnyStyle(
        light: const Color(0xFF000000),
        dark: const Color(0xFF000000),
      );

  Color get c_blue_light_button => dynamicAnyStyle(
        light: const Color(0xFFE2EDFC),
        dark: const Color(0xFFE2EDFC),
      );

  Color get c_white_text => dynamicAnyStyle(
        light: const Color(0xFFFFFFFF),
        dark: const Color(0xFFFFFFFF),
      );

  Color get c_gray => dynamicAnyStyle(
        light: const Color(0xFF697A9A),
        dark: const Color(0xFF697A9A),
      );

  Color get c_appbar => dynamicAnyStyle(
        light: const Color(0xFFFFFFFF),
        dark: const Color(0xFFFFFFFF),
      );

  Color get c_white_background => dynamicAnyStyle(
        light: const Color(0xFFFFFFFF),
        dark: const Color(0xFFFFFFFF),
      );

  Color get c_text_grey => dynamicAnyStyle(
        light: const Color(0xFF808080),
        dark: const Color(0xFF808080),
      );
  Color get c_text_grey_calendar_item_time_color => dynamicAnyStyle(
    light: const Color(0xFF98A2B3),
    dark: const Color(0xFF98A2B3),
  );

  Color get c_orange_border => dynamicAnyStyle(
        light: const Color(0xFFFDF0E4),
        dark: const Color(0xFFFDF0E4),
      );

  Color get c_grey_stoke => dynamicAnyStyle(
        light: const Color(0xFFECECEC),
        dark: const Color(0xFFECECEC),
      );
  Color get c_grey_calendar_border => dynamicAnyStyle(
        light: const Color(0xFFDEE2E8),
        dark: const Color(0xFFDEE2E8),
      );

  Color get c_grey_hover => dynamicAnyStyle(
        light: const Color(0xFFE6E6E6),
        dark: const Color(0xFFE6E6E6),
      );

  Color get c_grey_light => dynamicAnyStyle(
        light: const Color(0xFFE6F8EE),
        dark: const Color(0xFFE6F8EE),
      );

  Color get c_grey_grey => dynamicAnyStyle(
        light: const Color(0xFFF5F5F5),
        dark: const Color(0xFFF5F5F5),
      );

  Color get c_grey_calendar_time => dynamicAnyStyle(
        light: const Color(0xFF808080),
        dark: const Color(0xFF808080),
      );

  Color get c_grey_calendar_task_isFinished => dynamicAnyStyle(
        light: const Color(0xFFB3B3B3),
        dark: const Color(0xFFB3B3B3),
      );

  Color get c_green_light => dynamicAnyStyle(
        light: const Color(0xFFEFFAF4),
        dark: const Color(0xFFEFFAF4),
      );

  Color get c_placeholder => dynamicAnyStyle(
        light: const Color(0xFFB3B3B3),
        dark: const Color(0xFFB3B3B3),
      );

  Color get c_red => dynamicAnyStyle(
        light: const Color(0xFFF44D5C),
        dark: const Color(0xFFF44D5C),
      );

  Color get c_pink => dynamicAnyStyle(
        light: const Color(0xFFF94892),
        dark: const Color(0xFFF94892),
      );

  Color get c_red_label => dynamicAnyStyle(
        light: const Color(0xFFFEEEEF),
        dark: const Color(0xFFFEEEEF),
      );

  Color get c_calls_background => dynamicAnyStyle(
        light: const Color(0xFF292E33),
        dark: const Color(0xFF292E33),
      );

  Color get c_calls_active_button => dynamicAnyStyle(
        light: const Color(0xFF3F464D),
        dark: const Color(0xFF3F464D),
      );

  Color get c_calls_disabled_button => dynamicAnyStyle(
        light: Colors.transparent,
        dark: Colors.transparent,
      );

  Color get c_calls_grey => dynamicAnyStyle(
        light: const Color(0xFF32383E),
        dark: const Color(0xFF32383E),
      );

  Color get c_shadow => dynamicAnyStyle(
        light: const Color(0xFF090909),
        dark: const Color(0xFF090909),
      );

  Color get c_yellow => dynamicAnyStyle(
        light: const Color(0xFFFFD453),
        dark: const Color(0xFFFFD453),
      );

  Color get c_orange_light => dynamicAnyStyle(
        light: const Color(0xFFF2994A),
        dark: const Color(0xFFF2994A),
      );

  Color get c_orange_label => dynamicAnyStyle(
        light: const Color(0xFFFDF0E4),
        dark: const Color(0xFFFDF0E4),
      );

  Color get c_orange => dynamicAnyStyle(
        light: const Color(0xFFFD841F),
        dark: const Color(0xFFFD841F),
      );

  Color get c_light_gray => dynamicAnyStyle(
        light: const Color(0xFFCCD4DE),
        dark: const Color(0xFFCCD4DE),
      );

  Color get c_shadow_black_opacity_10 => dynamicAnyStyle(
        light: const Color(0xFF000000).withOpacity(0.1),
        dark: const Color(0xFF000000).withOpacity(0.1),
      );
}

extension AssetsColorsContext on BuildContext {
  T dynamicAnyStyle<T>({required T light, required T dark}) {
    return (Theme.of(this).brightness == Brightness.light) ? light : dark;
  }

  ColorFilter get c_overlay_with_opacity_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0x6F090909), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0x6F090909), BlendMode.srcIn),
      );

  ColorFilter get c_purple_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF923CE8), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF923CE8), BlendMode.srcIn),
      );

  ColorFilter get c_purple_color_with_opacity_05_filter => dynamicAnyStyle(
    light: ColorFilter.mode(Color(0xFF923CE8).withOpacity(0.5), BlendMode.srcIn),
    dark:  ColorFilter.mode(Color(0xFF923CE8).withOpacity(0.5), BlendMode.srcIn),
  );

  ColorFilter get c_purple_event_time_color_filter => dynamicAnyStyle(
    light: const ColorFilter.mode(Color(0xFFB692F6), BlendMode.srcIn),
    dark: const ColorFilter.mode(Color(0xFFB692F6), BlendMode.srcIn),
  );


  ColorFilter get c_tiffany_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF00C8C8), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF00C8C8), BlendMode.srcIn),
      );

  ColorFilter get c_tiffany_with_opacity_05_color_filter => dynamicAnyStyle(
    light: ColorFilter.mode(Color(0xFF00C8C8).withOpacity(0.5), BlendMode.srcIn),
    dark: ColorFilter.mode(Color(0xFF00C8C8).withOpacity(0.5), BlendMode.srcIn),
  );

  ColorFilter get c_tiffany_background_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFE6FAFA), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFE6FAFA), BlendMode.srcIn),
      );

  ColorFilter get c_purple_background_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFF5ECFD), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFF5ECFD), BlendMode.srcIn),
      );

  ColorFilter get c_blue_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF3C85E8), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF3C85E8), BlendMode.srcIn),
      );

  ColorFilter get c_blue_disabled_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF77AAEF), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF77AAEF), BlendMode.srcIn),
      );

  ColorFilter get c_blue_menu_button_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF1F68CA), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF1F68CA), BlendMode.srcIn),
      );

  ColorFilter get c_blue_light_button_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFE2EDFC), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFE2EDFC), BlendMode.srcIn),
      );

  ColorFilter get c_white_text_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
      );

  ColorFilter get c_appbar_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
      );

  ColorFilter get c_text_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF000000), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF000000), BlendMode.srcIn),
      );

  ColorFilter get c_text_grey_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF808080), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF808080), BlendMode.srcIn),
      );

  ColorFilter get c_grey_stoke_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFECECEC), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFECECEC), BlendMode.srcIn),
      );

  ColorFilter get c_grey_hover_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFE6E6E6), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFE6E6E6), BlendMode.srcIn),
      );

  ColorFilter get c_grey_grey_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFF5F5F5), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFF5F5F5), BlendMode.srcIn),
      );

  ColorFilter get c_green_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF59CD8C), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF59CD8C), BlendMode.srcIn),
      );


  ColorFilter get c_green_event_time_color_filter => dynamicAnyStyle(
    light: const ColorFilter.mode(Color(0xFF31C8C8), BlendMode.srcIn),
    dark: const ColorFilter.mode(Color(0xFF31C8C8), BlendMode.srcIn),
  );


  ColorFilter get c_green_light_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFEFFAF4), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFEFFAF4), BlendMode.srcIn),
      );

  ColorFilter get c_placeholder_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFB3B3B3), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFB3B3B3), BlendMode.srcIn),
      );

  ColorFilter get c_red_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFF44D5C), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFF44D5C), BlendMode.srcIn),
      );

  ColorFilter get c_red_label_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFEEEEF), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFEEEEF), BlendMode.srcIn),
      );

  ColorFilter get c_calls_background_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF292E33), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF292E33), BlendMode.srcIn),
      );

  ColorFilter get c_calls_active_button_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF3F464D), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF3F464D), BlendMode.srcIn),
      );

  ColorFilter get c_calls_disabled_button_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
        dark: const ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
      );

  ColorFilter get c_calls_grey_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFF32383E), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFF32383E), BlendMode.srcIn),
      );

  ColorFilter get c_yellow_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFFD453), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFFD453), BlendMode.srcIn),
      );

  ColorFilter get c_orange_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFD841F), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFD841F), BlendMode.srcIn),
      );

  ColorFilter get c_orange_light_color_filter => dynamicAnyStyle(
        light: const ColorFilter.mode(Color(0xFFFDF0E4), BlendMode.srcIn),
        dark: const ColorFilter.mode(Color(0xFFFDF0E4), BlendMode.srcIn),
      );
}
