.class public Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;
.super Lcom/freeme/camera/common/jpeg/JpegDecoder;
.source "HwJpegDecodeImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwJpegDecodeImpl"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_jpegdecoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->nativeClassInit()V

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/JpegDecoder;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->nativeSetup(III[B)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/JpegDecoder;-><init>()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->nativeSetup(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDecode([B)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetup(III[B)V
.end method

.method private native nativeSetup(Landroid/graphics/SurfaceTexture;)V
.end method


# virtual methods
.method public decode([B)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decode], jpegData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->nativeDecode([B)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "[release]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/HwJpegDecodeImpl;->nativeRelease()V

    return-void
.end method
