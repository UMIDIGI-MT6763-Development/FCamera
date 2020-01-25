.class public abstract Lcom/freeme/camera/common/jpeg/JpegDecoder;
.super Ljava/lang/Object;
.source "JpegDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/graphics/SurfaceTexture;)Lcom/freeme/camera/common/jpeg/JpegDecoder;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method


# virtual methods
.method public abstract decode([B)V
.end method

.method public abstract release()V
.end method
