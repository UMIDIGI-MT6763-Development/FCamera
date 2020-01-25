.class public abstract Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder$Callback;
.super Ljava/lang/Object;
.source "HeifEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComplete(Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder;)V
.end method

.method public abstract onDrainOutputBuffer(Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onError(Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V
.end method

.method public abstract onOutputFormatChanged(Lcom/freeme/camera/feature/mode/camerawater/heif/HeifEncoder;Landroid/media/MediaFormat;)V
.end method
