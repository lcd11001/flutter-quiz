typedef Callback<T> = void Function(T value);
typedef ReturnCallback<R, P> = R Function(P value);

enum ScreenType {
  splashScreen,
  questionScreen,
  resultScreen,
}
