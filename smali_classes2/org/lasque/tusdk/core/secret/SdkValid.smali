.class public Lorg/lasque/tusdk/core/secret/SdkValid;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;
    }
.end annotation


# static fields
.field public static final shared:Lorg/lasque/tusdk/core/secret/SdkValid;


# instance fields
.field private a:Lorg/lasque/tusdk/core/TuSdkConfigs;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->shared()Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_CORE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->loadLibrary(Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;)V

    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Landroid/graphics/Bitmap;
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->type()I

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniReadThumb(JJI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->type()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadResource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->type()I

    move-result p3

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->type()I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadResource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(JLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)V
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->type()I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniRemoveResource(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/SdkValid;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadDevelopInfo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "lsq_tusdk_configs.json"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleOther(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getAssetsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/TuSdkConfigs;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/TuSdkConfigs;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-object v2, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    const-string p1, "Configuration not found! Please see: http://tusdk.com/docs/android/get-started"

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->masters:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->masters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iput-object v2, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->masters:Ljava/util/HashMap;

    if-nez p1, :cond_3

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->master:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkConfigs;->master:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iput-object v2, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->master:Ljava/lang/String;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-ge v0, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadDevelopInfo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    const-string v4, "latest_cached_master"

    invoke-virtual {v0, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_6

    invoke-static {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadDevelopInfo(Ljava/lang/String;)Z

    move-result p1

    :cond_6
    if-nez p1, :cond_7

    iput-object v2, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    const-string p1, "Incorrect master key! Please see: http://tusdk.com/docs/help/package-name-and-app-key"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    iput-object v2, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    const-string p1, "Master key not found! Please see: http://tusdk.com/docs/android/get-started"

    goto/16 :goto_0
.end method

.method private static native jniBeautyLevel()I
.end method

.method private static native jniBothUseStickers()I
.end method

.method private static native jniCompileShader(Ljava/lang/String;I[I)Ljava/lang/String;
.end method

.method private static native jniDeveloperID()Ljava/lang/String;
.end method

.method private static native jniFilterAPIEnabled()Z
.end method

.method private static native jniFilterAPIValidWithID(J)Z
.end method

.method private static native jniGetFilterWrapWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.end method

.method private static native jniHDRFilterEnabled()Z
.end method

.method private static native jniHasExpired()Z
.end method

.method private static native jniHasPower()Z
.end method

.method private static native jniHasValidWithDevType()Z
.end method

.method private static native jniInit(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method private static native jniLoadDevelopInfo(Ljava/lang/String;)Z
.end method

.method private static native jniLoadFilterConfig(Ljava/lang/String;)Z
.end method

.method private static native jniLoadResource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end method

.method private static native jniLocalFilterCount()I
.end method

.method private static native jniLocalStickerCount()I
.end method

.method private static native jniPassDoubleValid()Z
.end method

.method private static native jniReadBrush(JLjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native jniReadInternalTextures([Ljava/lang/Object;)[Lorg/lasque/tusdk/core/seles/sources/SelesPicture;
.end method

.method private static native jniReadSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native jniReadTextures(J[Ljava/lang/Object;)[Lorg/lasque/tusdk/core/seles/sources/SelesPicture;
.end method

.method private static native jniReadThumb(JJI)Landroid/graphics/Bitmap;
.end method

.method private static native jniRemoveResource(JI)V
.end method

.method private static native jniRenderFilterThumb()Z
.end method

.method private static native jniSmudgeEnabled()Z
.end method

.method private static native jniSupportImageSide()I
.end method

.method private static native jniVideoCameraBitrateEnabled()Z
.end method

.method private static native jniVideoCameraShotEnabled()Z
.end method

.method private static native jniVideoCameraStickerEnabled()Z
.end method

.method private static native jniVideoDurationEnabled()Z
.end method

.method private static native jniVideoEditEnabled()Z
.end method

.method private static native jniVideoEditorBitrateEnabled()Z
.end method

.method private static native jniVideoEditorFilterEnabled()Z
.end method

.method private static native jniVideoEditorMusicEnabled()Z
.end method

.method private static native jniVideoEditorResolutionEnabled()Z
.end method

.method private static native jniVideoEditorStickerEnabled()Z
.end method

.method private static native jniVideoRecordContinuousEnabled()Z
.end method

.method private static native jniVideoRecordEnabled()Z
.end method

.method private static native jniVideoStreamEnabled()Z
.end method

.method private static native jniWipeFilterEnabled()Z
.end method


# virtual methods
.method public beautyLevel()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniBeautyLevel()I

    move-result v0

    return v0
.end method

.method public checkAppAuth()V
    .locals 5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    const-string v1, "auth_check_date"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCacheLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseCalendar(J)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/secret/SdkValid$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/secret/SdkValid$1;-><init>(Lorg/lasque/tusdk/core/secret/SdkValid;)V

    invoke-direct {p0, v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Z)V

    new-instance v1, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;-><init>()V

    const-string v2, "app_key"

    iget-object v4, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v2

    const-string v4, "/app/authorize"

    invoke-virtual {v2, v4, v1, v3, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->getUpdatedAppAuthAction:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public compileShader(Ljava/lang/String;I[I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniCompileShader(Ljava/lang/String;I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public filterAPIEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniFilterAPIEnabled()Z

    move-result v0

    return v0
.end method

.method public filterAPIValidWithID(J)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniFilterAPIValidWithID(J)Z

    move-result p1

    return p1
.end method

.method public geTuSdkConfigs()Lorg/lasque/tusdk/core/TuSdkConfigs;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->a:Lorg/lasque/tusdk/core/TuSdkConfigs;

    return-object v0
.end method

.method public getDeveloperId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniDeveloperID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterWrapWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniGetFilterWrapWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    return-object p1
.end method

.method public hdrFilterEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniHDRFilterEnabled()Z

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniHasExpired()Z

    move-result v0

    return v0
.end method

.method public isVaild()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniHasValidWithDevType()Z

    move-result v0

    return v0
.end method

.method public loadBrushGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Ljava/lang/String;Ljava/lang/String;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFilterConfig(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLoadFilterConfig(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadFilterGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceVideoFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Ljava/lang/String;Ljava/lang/String;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadStickerGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(Ljava/lang/String;Ljava/lang/String;Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localFilterCount()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLocalFilterCount()I

    move-result v0

    return v0
.end method

.method public localStickerCount()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniLocalStickerCount()I

    move-result v0

    return v0
.end method

.method public maxImageSide()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniSupportImageSide()I

    move-result v0

    return v0
.end method

.method public maxStickers()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniBothUseStickers()I

    move-result v0

    return v0
.end method

.method public readBrush(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniReadBrush(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readBrushThumb(JJ)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v5, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JJLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readFilterThumb(JJ)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v5, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JJLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readInternalTextures(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniReadInternalTextures([Ljava/lang/Object;)[Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public readSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniReadSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readStickerThumb(JJ)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v5, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JJLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public readTextures(JLjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniReadTextures(J[Ljava/lang/Object;)[Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public removeBrushGroup(J)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceBrush:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)V

    return-void
.end method

.method public removeFilterGroup(J)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceFilter:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)V

    return-void
.end method

.method public removeStickerGroup(J)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;->ResourceSticker:Lorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->a(JLorg/lasque/tusdk/core/secret/SdkValid$SdkResourceType;)V

    return-void
.end method

.method public renderFilterThumb()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniRenderFilterThumb()Z

    move-result v0

    return v0
.end method

.method public sdkValid()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniPassDoubleValid()Z

    move-result v0

    return v0
.end method

.method public sdkValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/SdkValid;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniInit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public smudgeEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniSmudgeEnabled()Z

    move-result v0

    return v0
.end method

.method public vaildAndDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniHasPower()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->sp2px(I)I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const v2, 0x40ffffff    # 7.9999995f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v3, "Technology by TuSDK"

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public videoCameraBitrateEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoCameraBitrateEnabled()Z

    move-result v0

    return v0
.end method

.method public videoCameraShotEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoCameraShotEnabled()Z

    move-result v0

    return v0
.end method

.method public videoCameraStickerEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoCameraStickerEnabled()Z

    move-result v0

    return v0
.end method

.method public videoDurationEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoDurationEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditorBitrateEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditorBitrateEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditorFilterEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditorFilterEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditorMusicEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditorMusicEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditorResolutionEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditorResolutionEnabled()Z

    move-result v0

    return v0
.end method

.method public videoEditorStickerEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoEditorStickerEnabled()Z

    move-result v0

    return v0
.end method

.method public videoRecordContinuousEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoRecordContinuousEnabled()Z

    move-result v0

    return v0
.end method

.method public videoRecordEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoRecordEnabled()Z

    move-result v0

    return v0
.end method

.method public videoStreamEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniVideoStreamEnabled()Z

    move-result v0

    return v0
.end method

.method public wipeFilterEnabled()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/secret/SdkValid;->jniWipeFilterEnabled()Z

    move-result v0

    return v0
.end method
