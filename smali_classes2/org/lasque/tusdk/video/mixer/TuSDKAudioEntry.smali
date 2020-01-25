.class public Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
.super Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

.field private b:Z

.field private c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private d:Z

.field private e:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>(Landroid/net/Uri;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    return-void
.end method


# virtual methods
.method public bytesSizeOfTimeRangeEndPosition()I
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bytesCountOfTime(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bytesSizeOfTimeRangeStartPosition()I
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bytesCountOfTime(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearDecodeCahceInfo()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    :cond_2
    :goto_0
    return v1
.end method

.method public getCutTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->e:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateCutTimeRange()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getCutTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getCutTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRawInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioFormat(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->createWithMediaFormat(Landroid/media/MediaFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-object v0
.end method

.method public getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    return v0
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->d:Z

    return v0
.end method

.method public isTrunk()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->b:Z

    return v0
.end method

.method public setCutTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->e:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object p0
.end method

.method public setLooping(Z)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->d:Z

    return-object p0
.end method

.method public setRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-object p0
.end method

.method public setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object p0
.end method

.method public setTrunk(Z)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->b:Z

    return-object p0
.end method

.method public setVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iput p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->f:F

    :cond_0
    return-object p0
.end method

.method public validateCutTimeRange()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->e:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateTimeRange()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
