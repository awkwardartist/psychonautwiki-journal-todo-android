
OUTPUT_DIR=./output
APK_DIR=./app/build/outputs/apk

# run clean build
all: clean output

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
	-rm -rf $(OUTPUT_DIR)
	-mkdir -p $(OUTPUT_DIR) 
	-cp -rfT $(OUTPUT_DIR) $(APK_DIR)/release/app-release-unsigned.apk 2>/dev/null
	-cp -rfT $(OUTPUT_DIR) $(APK_DIR)/debug/app-debug.apk 2>/dev/null

.PHONY: all clean debug release
