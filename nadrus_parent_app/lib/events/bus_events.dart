import 'package:event_bus/event_bus.dart';

/// make sure you are using the same instance of your [EventBus] in all components.
final EventBus eventBus = EventBus();

/// Send event from non-context class to ui for hide softKeyboard
class SoftKeyboardEvent {
  const SoftKeyboardEvent();
}

/// Send event from non-context class to ui for logOut
class UnauthorizedEvent {
  const UnauthorizedEvent();
}

/// Send event from non-context class to main class to change current theme
class ThemeChangedEvent {
  const ThemeChangedEvent();
}
