.class public Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final HEVC_MIMETYPE:Ljava/lang/String; = "video/hevc"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKeyFrameRate(Landroid/media/MediaFormat;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "frame-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0, p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 1

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static createMuxer(Ljava/lang/String;I)Landroid/media/MediaMuxer;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAudioDefaultInterval()J
    .locals 2

    const/16 v0, 0x400

    const v1, 0xac44

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioInterval(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAudioFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAudioFormat(Ljava/lang/String;)Landroid/media/MediaFormat;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    move-result-object p0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static getAudioFormat(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Landroid/media/MediaFormat;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    move-result-object p0

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getAudioInterval(II)J
    .locals 1

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xf4240

    mul-int/2addr p0, v0

    div-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioDefaultInterval()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAudioInterval(ILandroid/media/MediaFormat;)J
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioSampleRate(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioInterval(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAudioSampleRate(Landroid/media/MediaFormat;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Is not a audio format"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v1, "sample-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "sample-rate"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static getAudioTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getEncoderCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSafePts(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    const-wide/16 p2, 0x25ab

    add-long/2addr p0, p2

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static getVideoDefaultInterval()J
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoInterval(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVideoFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVideoFormat(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Landroid/media/MediaFormat;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    move-result-object p0

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getVideoFps(Landroid/media/MediaFormat;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Is not a video format"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v1, "frame-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "frame-rate"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static getVideoInterval(I)J
    .locals 2

    if-gtz p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const v0, 0xf4240

    div-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getVideoInterval(Landroid/media/MediaFormat;)J
    .locals 2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoFps(Landroid/media/MediaFormat;)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoInterval(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVideoTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHEVCSupported()Z
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    const-string v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isSameAudioFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sample-rate"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    const-string v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sample-rate"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSameVideoFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    const-string v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v2, v4, :cond_1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVideoSizeSupported(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getEncoderCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    invoke-virtual {p1, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v6, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->getDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-gt v0, v2, :cond_4

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-gt p0, p1, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method
