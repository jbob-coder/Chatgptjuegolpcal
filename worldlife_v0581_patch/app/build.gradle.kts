plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.plugin.compose")
}

android {
    namespace = "com.jackwilson.worldlife"
    compileSdk = 37

    defaultConfig {
        applicationId = "com.jackwilson.worldlife"
        minSdk = 26
        targetSdk = 37
        versionCode = 24
        versionName = "0.5.8.1"
    }

    buildFeatures {
        compose = true
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    signingConfigs {
        create("worldlifeDev") {
            storeFile = file("dev-signing.jks")
            storePassword = "worldlife-dev"
            keyAlias = "worldlife-dev"
            keyPassword = "worldlife-dev"
        }
    }

    buildTypes {
        debug {
            signingConfig = signingConfigs.getByName("worldlifeDev")
        }
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
        }
    }
}

dependencies {
    implementation(project(":game-core"))

    val composeBom = platform("androidx.compose:compose-bom:2026.08.00")
    implementation(composeBom)

    implementation("androidx.activity:activity-compose:1.13.0")
    implementation("androidx.core:core-ktx:1.19.0")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.ui:ui-tooling-preview")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.10.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.10.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.10.0")
    implementation("androidx.datastore:datastore:1.2.1")
    implementation("io.github.sceneview:sceneview:4.33.0")

    debugImplementation("androidx.compose.ui:ui-tooling")
}
