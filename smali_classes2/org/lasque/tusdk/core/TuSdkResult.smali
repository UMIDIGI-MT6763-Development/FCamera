.class public Lorg/lasque/tusdk/core/TuSdkResult;
.super Ljava/lang/Object;


# instance fields
.field public cutRatioType:I

.field public cutRect:Landroid/graphics/RectF;

.field public cutScale:F

.field public extendData:Ljava/lang/Object;

.field public filterCode:Ljava/lang/String;

.field public filterParams:Lorg/lasque/tusdk/core/seles/SelesParameters;

.field public filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field public image:Landroid/graphics/Bitmap;

.field public imageData:[B

.field public imageFile:Ljava/io/File;

.field public imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field public imageSizeRatio:F

.field public imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

.field public outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageData:[B

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->extendData:Ljava/lang/Object;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->filterParams:Lorg/lasque/tusdk/core/seles/SelesParameters;

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    return-void
.end method

.method public fixedMetadata()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_ORIENTATION:I

    sget-object v2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getExifOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public logInfo()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/TuSdkResult;->logInfo(Z)V

    return-void
.end method

.method public logInfo(Z)V
    .locals 4

    const-string v0, "TuSdkResult:\r%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/TuSdkResult;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->log(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "image (%s): %s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    aput-object v6, v5, v3

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_1

    const-string v4, "imageFile: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->filterCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v4, "filterCode: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string v4, "uri: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    if-eqz v1, :cond_4

    const-string v4, "sqlInfo: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->outputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v1, :cond_5

    const-string v4, "outputSize: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    const-string v4, "cutRect: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    if-eqz v1, :cond_7

    const-string v4, "images: %s\n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
