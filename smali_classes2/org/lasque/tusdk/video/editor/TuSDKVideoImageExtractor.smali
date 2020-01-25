.class public Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaMetadataRetriever;

.field private b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

.field private c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private d:I

.field private e:I

.field private f:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a()Landroid/media/MediaMetadataRetriever;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method private b()Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    iget-object v3, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v4}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    return v2

    :cond_3
    :goto_1
    const-string v0, "please set video path"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method public static createExtractor()Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asyncExtractImageList(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$2;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method public extractImageList(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getExtractFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getExtractFrameInterval()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "mExtractFrameCount and mExtractFrameInterval is invalid"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->makeRange(FF)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getExtractFrameCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getExtractFrameCount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getExtractFrameInterval()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    iget-object v3, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v3, v3, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    :goto_1
    cmpg-float v4, v3, v1

    if-gez v4, :cond_6

    const v4, 0x49742400    # 1000000.0f

    mul-float/2addr v4, v3

    float-to-long v4, v4

    const/16 v6, 0x50

    invoke-virtual {p0, v4, v5, v6}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;

    invoke-direct {v5, p0, p1, v4}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$1;-><init>(Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor$TuSDKVideoImageExtractorDelegate;Landroid/graphics/Bitmap;)V

    invoke-static {v5}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    add-float/2addr v3, v2

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c()V

    const-wide/32 v1, 0x903005

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-object v0
.end method

.method public getExtractFrameCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->d:I

    return v0
.end method

.method public getExtractFrameInterval()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->e:I

    return v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p3

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p3

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ne p2, p3, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p3

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/16 v1, 0x50

    invoke-direct {v0, v1, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getVideoDataSource()Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-object v0
.end method

.method public setExtractFrameCount(I)Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->d:I

    return-object p0
.end method

.method public setExtractFrameInterval(I)Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->e:I

    return-object p0
.end method

.method public setOutputImageSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object p0
.end method

.method public setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object p0
.end method

.method public setVideoDataSource(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKVideoImageExtractor;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-object p0
.end method
