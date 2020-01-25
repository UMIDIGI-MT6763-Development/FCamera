.class public final Lorg/lasque/tusdk/core/utils/image/GifHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/image/GifHelper$GifIOException;,
        Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
    }
.end annotation


# instance fields
.field private volatile gifInfoPtr:J

.field private mFrameCount:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method private constructor <init>(JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    iput p3, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mWidth:I

    iput p4, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mHeight:I

    iput p5, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mFrameCount:I

    return-void
.end method

.method public static openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFd(Ljava/io/FileDescriptor;JZ)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
.end method

.method public static openURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 2

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFile(Ljava/lang/String;Z)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0
.end method

.method public static parseFd(Ljava/io/FileDescriptor;)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFd(Ljava/io/FileDescriptor;JZ)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0
.end method

.method public static parseFile(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFile(Ljava/lang/String;Z)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getCurrentFrameIndex()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentFrameIndex(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentLoop()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentLoop(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentPosition(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifDuration(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifErrorCode(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mFrameCount:I

    return v0
.end method

.method public getFrameDuration(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getFrameCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifFrameDuration(JI)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Frame index is out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mHeight:I

    return v0
.end method

.method public declared-synchronized getLoopCount()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifLoopCount(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->mWidth:I

    return v0
.end method

.method public declared-synchronized isAnimationCompleted()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->isGifAnimationCompleted(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->freeGif(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized renderFrame(Landroid/graphics/Bitmap;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->renderGifFrame(JLandroid/graphics/Bitmap;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->resetGif(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restoreRemainder()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->restoreGifRemainder(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveRemainder()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->saveGifRemainder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoopCount(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->setGifLoopCount(JI)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count of range <0, 65535>"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpeed(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x30000000

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/image/GifHelper;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->setGifSpeedFactor(JF)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Speed factor is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
