# Basic ProGuard configuration
-optimizationpasses 5
-dontoptimize
-dontpreverify
-verbose

# Keep classes and methods in your application code
-keep class com.voicechanger.app.effects.** { *; }
-keep class com.reactlibrary.object.ModelEffects { *; }
-keep class com.un4seen.bass.** { *; }

# Keep Glide specific classes and methods
-dontwarn com.bumptech.glide.**
-keep class com.bumptech.glide.** { *; }
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
    **[] $VALUES;
    public *;
}

# Preserve logging calls
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static *** d(...);
    public static *** w(...);
    public static *** v(...);
    public static *** i(...);
    public static *** e(...);
}

# Keep classes for specific packages
-keep class com.voicechanger.app.effects.myAdsClasses.** { *; }
-keep class com.voicechanger.app.effects.ads.** { *; }
-keep class com.voicechanger.app.effects.getApiData.allModel.** { *; }
-keep class com.voicechanger.app.effects.getApiData.appScheduler.** { *; }
-keep class com.voicechanger.app.effects.MainApplication { *; }
-keep class com.un4seen.bass.** { *; }

# Keep Google Ads classes
-keep public class com.google.android.gms.ads.** {
   public *;
}

# Keep Apache HTTP and Android HTTP classes
-dontwarn org.apache.http.**
-dontwarn android.net.http.AndroidHttpClient
-keep class org.apache.http.** { *; }
-keep class android.net.http.** { *; }

# Other options
-mergeinterfacesaggressively
-overloadaggressively
-repackageclasses "com.soundeffect.voiceavatar.changer"
-ignorewarnings


















##------------- Glide ----------
#-dontwarn com.bumptech.glide.**
#-keep class com.bumptech.glide.** { *; }
#
#-dontwarn com.squareup.okhttp.**
#-dontwarn com.squareup.picasso.**
#
#-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
#  **[] $VALUES;
#  public *;
#}
##=======================================
#
#-assumenosideeffects class android.util.Log {
#    public static boolean isLoggable(java.lang.String, int);
#    public static *** d(...);
#    public static *** w(...);
#    public static *** v(...);
#    public static *** i(...);
#    public static *** e(...);
#}
#
##------------------ My Class -----------------------
#
#-dontwarn com.voicechanger.app.effects.myAdsClasses.**
#-keep class com.voicechanger.app.effects.myAdsClasses.** { *; }
#
#-dontwarn com.voicechanger.app.effects.ads.**
#-keep class com.voicechanger.app.effects.ads.** { *; }
#
#-dontwarn com.reactlibrary.object.ModelEffects
#-keep class com.reactlibrary.object.ModelEffects { *; }
#
#-dontwarn com.voicechanger.app.effects.MainApplication
#-keep class com.voicechanger.app.effects.MainApplication { *; }
#
#-dontwarn com.un4seen.bass.**
#-keep class com.un4seen.bass.** { *; }
#
#-dontwarn com.voicechanger.app.effects.getApiData.allModel.**
#-keep class com.voicechanger.app.effects.getApiData.allModel.** { *; }
#
#-dontwarn com.voicechanger.app.effects.getApiData.appScheduler.**
#-keep class com.voicechanger.app.effects.getApiData.appScheduler.** { *; }
#
##==================================================
#
#-flattenpackagehierarchy
#-ignorewarnings
#
#-keep public class com.google.android.gms.ads.**{
#   public *;
#}
#
#-dontwarn org.apache.http.**
#-dontwarn android.net.http.AndroidHttpClient.**
#-keep class org.apache.http.** { *; }
#-keep class android.net.http.** { *; }
#
#-keep class com.google.android.** { *; }
#
#-mergeinterfacesaggressively
#-overloadaggressively
#-repackageclasses "com.soundeffect.voiceavatar.changer"