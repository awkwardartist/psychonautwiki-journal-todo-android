
# APK output paths:
OUTPUT_DIR=./output
APK_DIR=./app/build/outputs/apk
APK_RELEASE=$(APK_DIR)/release/app-release-unsigned.apk
APK_DEBUG=$(APK_DIR)/debug/app-debug.apk

# run clean build
all: output

# runs a clean build of file
full: clean output

# run gradle assembleRelease
release:
	./gradlew assembleRelease --quiet

# run gradle clean
clean:
	-./gradlew clean --quiet

# run gradle debug build
debug:
	-./gradlew build --quiet

# outputs all .apks to output/
output: debug release
	@-rm -rf $(OUTPUT_DIR)
	@-mkdir -vp $(OUTPUT_DIR)
	@-cp -vf '$(APK_RELEASE)' '$(OUTPUT_DIR)/release.apk' 2>/dev/null
	@-cp -vf '$(APK_DEBUG)' '$(OUTPUT_DIR)/debug.apk' 2>/dev/null

.PHONY: all clean debug release
