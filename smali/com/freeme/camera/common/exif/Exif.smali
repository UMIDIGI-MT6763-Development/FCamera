.class public Lcom/freeme/camera/common/exif/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/exif/Exif;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/exif/Exif;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-direct {v0}, Lcom/freeme/camera/common/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/freeme/camera/common/exif/Exif;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getOrientation(Lcom/freeme/camera/common/exif/ExifInterface;)I
    .locals 1

    sget v0, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/freeme/camera/common/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0

    return p0
.end method

.method public static getOrientation([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/freeme/camera/common/exif/Exif;->getOrientation(Lcom/freeme/camera/common/exif/ExifInterface;)I

    move-result p0

    return p0
.end method
