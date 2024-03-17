.PHONY: prepare update get activate-fvm install-fvm pub-upgrade pub-upgrade-major activate-intl gen-build gen-build-delete gen-localization gen-watch gen-clean ios-update ios-update-x86_64 run run-shaders-warmup simulator git-ignore-update build-android-apk build-android-bundle build-ios build-mac build-linux build-web clean gen-asset

prepare: get activate-fvm install-fvm activate-intl gen-build-delete gen-localization gen-asset

update: install-fvm get install-fvm gen-build-delete gen-localization gen-asset

get:
	@echo "* Common package pub get *"
	@cd packages/common/ && fvm flutter pub get
	@echo "* Matrix_client package pub get *"
	@cd packages/matrix_client/ && fvm flutter pub get
	@echo "* Rest_api package pub get *"
	@cd packages/rest_api/ && fvm flutter pub get
	@echo "* Socket_api_models package pub get *"
	@cd packages/socket_api_models/ && fvm flutter pub get
	@echo "* Services_watcher package pub get *"
	@cd packages/services_watcher/ && fvm flutter pub get
	@echo "* Storage package pub get *"
	@cd packages/storage/ && fvm flutter pub get
	@echo "* Notifications_models package pub get *"
	@cd packages/notifications_models/ && fvm flutter pub get
	@echo "* Sip_repository package pub get *"
	@cd packages/sip_repository/ && fvm flutter pub get
	@echo "* Dls_calendar package pub get *"
	@cd packages/dls_calendar/ && fvm flutter pub get
	@echo "* Flutter pub get *"
	@fvm flutter pub get

activate-fvm:
	@echo "* Activating Flutter Version Management *"
	@dart pub global activate fvm

install-fvm:
	@echo "* Installing Flutter version for FVM from project configs *"
	@fvm install

pub-upgrade-major: get
	@echo "* Upgrading common package dependencies *"
	@cd packages/common/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading matrix_client package dependencies *"
	@cd packages/matrix_client/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading rest_api package dependencies *"
	@cd packages/rest_api/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading socket_api_models package dependencies *"
	@cd packages/socket_api_models/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading services_watcher package dependencies *"
	@cd packages/services_watcher/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading storage package dependencies *"
	@cd packages/storage/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading notifications_models package dependencies *"
	@cd packages/notifications_models/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading sip_repository package dependencies *"
	@cd packages/sip_repository/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading dls_calendar package dependencies *"
	@cd packages/dls_calendar/ && fvm flutter pub upgrade --major-versions
	@echo "* Upgrading main project dependencies *"
	@fvm flutter pub upgrade --major-versions

pub-upgrade: get
	@echo "* Upgrading common package major dependencies *"
	@cd packages/common/ && fvm flutter pub upgrade
	@echo "* Upgrading matrix_client package major dependencies *"
	@cd packages/matrix_client/ && fvm flutter pub upgrade
	@echo "* Upgrading rest_api package major dependencies *"
	@cd packages/rest_api/ && fvm flutter pub upgrade
	@echo "* Upgrading socket_api_models package major dependencies *"
	@cd packages/socket_api_models/ && fvm flutter pub upgrade
	@echo "* Upgrading services_watcher package major dependencies *"
	@cd packages/services_watcher/ && fvm flutter pub upgrade
	@echo "* Upgrading storage package major dependencies *"
	@cd packages/storage/ && fvm flutter pub upgrade
	@echo "* Upgrading notifications_models package major dependencies *"
	@cd packages/notification_models/ && fvm flutter pub upgrade
	@echo "* Upgrading sip_repository package major dependencies *"
	@cd packages/sip_repository/ && fvm flutter pub upgrade
	@echo "* Upgrading dls_calendar package major dependencies *"
	@cd packages/dls_calendar/ && fvm flutter pub upgrade
	@echo "* Upgrading main project major dependencies *"
	@fvm flutter pub upgrade

activate-intl:
	@echo "Activate global Intl utils localization generator"
	@fvm flutter pub global activate intl_utils

gen-build:
	@echo "* Running build runner in matrix_client package *"
	@cd packages/matrix_client/ && fvm flutter pub run build_runner build
	@echo "* Running build runner in notifications_models package *"
	@cd packages/notifications_models/ && fvm flutter pub run build_runner build
	@echo "* Running build runner in rest_api package *"
	@cd packages/rest_api/ && fvm flutter pub run build_runner build
	@echo "* Running build runner in socket_api_models package *"
	@cd packages/socket_api_models/ && fvm flutter pub run build_runner build
	@echo "* Running build runner in services_watcher package *"
	@cd packages/services_watcher/ && fvm flutter pub run build_runner build
	@echo "* Running build runner in main projects *"
	@fvm flutter pub run build_runner build

gen-asset:
	@echo "* Assets generation* "
	@fluttergen

gen-build-delete:
	@echo "* Running build runner in matrix_client package with deletion of conflicting output *"
	@cd packages/matrix_client/ && fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "* Running build runner in notifications_models package with deletion of conflicting output *"
	@cd packages/notifications_models/ && fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "* Running build runner in rest_api package with deletion of conflicting outputs *"
	@cd packages/rest_api/ && fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "* Running build runner in socket_api_models package with deletion of conflicting outputs *"
	@cd packages/socket_api_models/ && fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "* Running build runner in services_watcher package with deletion of conflicting outputs *"
	@cd packages/services_watcher/ && fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "* Running build runner in main projects with deletion of conflicting outputs *"
	@fvm flutter pub run build_runner build --delete-conflicting-outputs

gen-localization:
	@echo "Generate localization"
	@fvm flutter pub global run intl_utils:generate

gen-watch:
	@echo "* Running build runner in rest_api package in watch mode *"
	@cd packages/rest_api/ && fvm flutter pub run build_runner watch
	@echo "* Running build runner in socket_api_models package in watch mode *"
	@cd packages/socket_api_models/ && fvm flutter pub run build_runner watch
	@echo "* Running build runner in services_watcher package in watch mode *"
	@cd packages/services_watcher/ && fvm flutter pub run build_runner watch
	@echo "* Running build runner in notifications_models package in watch mode *"
	@cd packages/notifications_models/ && fvm flutter pub run build_runner watch
	@echo "* Running build runner in main project in watch mode *"
	@fvm flutter pub run build_runner watch

gen-clean:
	@echo "* Cleaning build runner in matrix_client package *"
	@cd packages/matrix_client/ && fvm flutter pub run build_runner clean
	@echo "* Cleaning build runner in rest_api package *"
	@cd packages/rest_api/ && fvm flutter pub run build_runner clean
	@echo "* Cleaning build runner in socket_api_models package *"
	@cd packages/socket_api_models/ && fvm flutter pub run build_runner clean
	@echo "* Cleaning build runner in services_watcher package *"
	@cd packages/services_watcher/ && fvm flutter pub run build_runner clean
	@echo "* Cleaning build runner in notifications_models package *"
	@cd packages/notifications_models/ && fvm flutter pub run build_runner clean
	@echo "* Cleaning build runner in main project *"
	@fvm flutter pub run build_runner clean

ios-update:
	@echo "* Pod install *"
	@cd ios && pod install

ios-update-x86_64:
	@echo "* Pod install *"
	@cd ios && arch -x86_64 pod install

run:
	@echo "* Running app *"
	@fvm flutter run

run-shaders-warmup:
	@echo "* Running app for shaders warmup *"
	@fvm flutter run --profile --cache-sksl --purge-persistent-cache

simulator:
	@echo "* Opening an iOS simulator *"
	@open -a Simulator

git-ignore-update:
	@echo "* Git ignore update *"
	@git rm -r --cached .
	@git add .

build-android-apk:
	@echo "* Build apk file for android *"
	@fvm flutter build apk --release

build-android-bundle:
	@echo "* Build android bundle *"
	@fvm flutter build appbundle --release

build-ios:
	@echo "* Build iOS ipa *"
	@fvm flutter build ipa --release --export-options-plist=./ios/Runner/ExportOptions.plist

build-mac:
	@echo "* Build file for MacOS *"
	@fvm flutter build macos --release

build-linux:
	@echo "* Build file for Linux *"
	@fvm flutter build linux --release

build-web:
	@echo "* Build Web *"
	@fvm flutter build web --release

clean:
	@echo "* Common package flutter clean *"
	@cd packages/common/ && fvm flutter clean
	@echo "* Matrix client package flutter clean *"
	@cd packages/matrix_client/ && fvm flutter clean
	@echo "* Rest_api package flutter clean *"
	@cd packages/rest_api/ && fvm flutter clean
	@echo "* Socket_api_models package flutter clean *"
	@cd packages/socket_api_models/ && fvm flutter clean
	@echo "* Services_watcher package flutter clean *"
	@cd packages/services_watcher/ && fvm flutter clean
	@echo "* Storage package flutter clean *"
	@cd packages/storage/ && fvm flutter clean
	@echo "* Notifications_models package flutter clean *"
	@cd packages/notifications_models/ && fvm flutter clean
	@echo "* Sip_repository package flutter clean *"
	@cd packages/sip_repository/ && fvm flutter clean
	@echo "* Flutter clean *"
	@fvm flutter clean
