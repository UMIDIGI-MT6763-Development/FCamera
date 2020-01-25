.class public abstract Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;
.super Ljava/lang/Object;
.source "JpegEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHwEncoderSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Landroid/content/Context;Z)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;-><init>()V

    return-object p0
.end method


# virtual methods
.method public configInputSurface(Landroid/view/Surface;III)Landroid/view/Surface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public configInputSurface(Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;III)Landroid/view/Surface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getSupportedInputFormats()[I
.end method

.method public abstract release()V
.end method

.method public abstract startEncode()V
.end method

.method public abstract startEncodeAndReleaseWhenDown()V
.end method
