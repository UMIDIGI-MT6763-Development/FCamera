.class Lcom/freeme/camera/common/jpeg/SwJpegDecodeImpl;
.super Lcom/freeme/camera/common/jpeg/JpegDecoder;
.source "SwJpegDecodeImpl.java"


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/JpegDecoder;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implement!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/JpegDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
