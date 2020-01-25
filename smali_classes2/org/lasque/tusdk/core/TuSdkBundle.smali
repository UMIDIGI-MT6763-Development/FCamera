.class public Lorg/lasque/tusdk/core/TuSdkBundle;
.super Ljava/lang/Object;


# static fields
.field public static final BUNDLE:Ljava/lang/String; = "TuSDK.bundle"

.field public static final CAMERA_FOCUS_BEEP_AUDIO_RAW:Ljava/lang/String; = "camera_focus_beep.mp3"

.field public static final FILTER_TEXTURES:Ljava/lang/String; = "textures"

.field public static final INTERNAL_FILTERS_CONFIG:Ljava/lang/String; = "lsq_internal_filters.filter"

.field public static final LOCAL_BRUSHES:Ljava/lang/String; = "brushes"

.field public static final LOCAL_STICKERS:Ljava/lang/String; = "stickers"

.field public static final OTHER_RESOURES:Ljava/lang/String; = "others"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sdkBundle()Ljava/lang/String;
    .locals 1

    const-string v0, "TuSDK.bundle"

    return-object v0
.end method

.method public static sdkBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sdkBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sdkBundleBrush(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "brushes"

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sdkBundleOther(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "others"

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sdkBundleSticker(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "stickers"

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sdkBundleTexture(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "textures"

    invoke-static {v0, p0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
