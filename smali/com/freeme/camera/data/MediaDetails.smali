.class public Lcom/freeme/camera/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mLongitude:D

.field private mUnits:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static extractExifInfo(Lcom/freeme/camera/data/MediaDetails;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-direct {v0}, Lcom/freeme/camera/common/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x66

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x64

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x65

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x69

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x6c

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x68

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    const/16 v1, 0x6b

    invoke-static {p0, p1, v1}, Lcom/freeme/camera/data/MediaDetails;->setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V

    sget p1, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/exif/ExifInterface;->getTag(I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/exif/ExifTag;->getValueAsRational(J)Lcom/freeme/camera/common/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const p1, 0x7f0f01b5

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/data/MediaDetails;->setUnit(II)V

    :cond_0
    return-void
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    mul-long/2addr v0, v2

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static setExifData(Lcom/freeme/camera/data/MediaDetails;Lcom/freeme/camera/common/exif/ExifTag;I)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/freeme/camera/common/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/freeme/camera/common/exif/ExifTag;->getValueAsRational(J)Lcom/freeme/camera/common/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/freeme/camera/data/MediaDetails$FlashState;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/freeme/camera/data/MediaDetails$FlashState;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/freeme/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLatlng()[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-wide v1, p0, Lcom/freeme/camera/data/MediaDetails;->mLatitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lcom/freeme/camera/data/MediaDetails;->mLongitude:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getUnit(I)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public hasUnit(I)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/data/MediaDetails;->mLatitude:D

    iput-wide p3, p0, Lcom/freeme/camera/data/MediaDetails;->mLongitude:D

    return-void
.end method

.method public setUnit(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
