echo "flutter pub get"
flutter pub get


echo "flutter pub run build_runner build"
flutter pub run build_runner build  --delete-conflicting-outputs


echo "flutter packages pub run build_runner build"
flutter packages pub run build_runner build

echo "flutter packages pub run build_runner build watch"
flutter packages pub run build_runner watch --delete-conflicting-outputs

echo "flutter build apk "
flutter build apk --release --split-per-abi




