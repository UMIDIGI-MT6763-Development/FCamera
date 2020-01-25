.class public Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->shared()Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_IMAGE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->loadLibrary(Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NV21TOYUV420P([B[BI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->NV21TOYUV420PJNI([B[BI)V

    return-void
.end method

.method private static native NV21TOYUV420PJNI([B[BI)V
.end method

.method public static NV21TOYUV420SP([B[BI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->NV21TOYUV420SPJNI([B[BI)V

    return-void
.end method

.method private static native NV21TOYUV420SPJNI([B[BI)V
.end method

.method public static NV21Transform([B[BIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->NV21TransformJNI([B[BIII)V

    return-void
.end method

.method private static native NV21TransformJNI([B[BIII)V
.end method

.method public static RGBAtoI420([BII[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoI420JNI([BII[I)V

    return-void
.end method

.method private static native RGBAtoI420JNI([BII[I)V
.end method

.method public static RGBAtoYUV([BII[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYUVJNI([BII[I)V

    return-void
.end method

.method private static native RGBAtoYUVJNI([BII[I)V
.end method

.method public static RGBAtoYV12([BII[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->RGBAtoYV12JNI([BII[I)V

    return-void
.end method

.method private static native RGBAtoYV12JNI([BII[I)V
.end method

.method public static YUVtoRBGA([BII[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->YUVtoRBGAJNI([BII[I)V

    return-void
.end method

.method private static native YUVtoRBGAJNI([BII[I)V
.end method

.method private static a(I)I
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    move p0, v0

    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static native compressBitmap2JNI(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ[B)Ljava/lang/String;
.end method

.method public static copyAndFlipGrayData([B[BIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->copyAndFlipGrayDataJNI([B[BIII)V

    return-void
.end method

.method private static native copyAndFlipGrayDataJNI([B[BIII)V
.end method

.method public static freeGif(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->freeGifJNI(J)V

    return-void
.end method

.method private static native freeGifJNI(J)V
.end method

.method private static native getBitmapClipHistListJNI(Landroid/graphics/Bitmap;IIF[B)I
.end method

.method public static getClipHistList(Landroid/graphics/Bitmap;IIF[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getBitmapClipHistListJNI(Landroid/graphics/Bitmap;IIF[B)I

    move-result p0

    return p0
.end method

.method public static getGifCurrentFrameIndex(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentFrameIndexJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifCurrentFrameIndexJNI(J)I
.end method

.method public static getGifCurrentLoop(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentLoopJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifCurrentLoopJNI(J)I
.end method

.method public static getGifCurrentPosition(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifCurrentPositionJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifCurrentPositionJNI(J)I
.end method

.method public static getGifDuration(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifDurationJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifDurationJNI(J)I
.end method

.method public static getGifErrorCode(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifErrorCodeJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifErrorCodeJNI(J)I
.end method

.method public static getGifFrameDuration(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifFrameDurationJNI(JI)I

    move-result p0

    return p0
.end method

.method private static native getGifFrameDurationJNI(JI)I
.end method

.method public static getGifLoopCount(J)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getGifLoopCountJNI(J)I

    move-result p0

    return p0
.end method

.method private static native getGifLoopCountJNI(J)I
.end method

.method public static getYUVHistgrameRange([BIII[F)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getYUVHistgrameRangeJNI([BIII[F)I

    move-result p0

    return p0
.end method

.method private static native getYUVHistgrameRangeJNI([BIII[F)I
.end method

.method public static imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
    .locals 1

    const/16 v0, 0x5f

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;I)Z

    move-result p0

    return p0
.end method

.method public static imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ)Z

    move-result p0

    return p0
.end method

.method public static imageCompress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->isSupporTurbo()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->a(I)I

    move-result p2

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-static {p0, p1, p2, p3, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->compressBitmap2JNI(Landroid/graphics/Bitmap;Ljava/io/OutputStream;IZ[B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    return p3

    :cond_1
    const-string p2, "saveImage: %s | %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    aput-object p0, v1, v0

    aput-object p1, v1, p3

    invoke-static {p2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static isGifAnimationCompleted(J)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->isGifAnimationCompletedJNI(J)Z

    move-result p0

    return p0
.end method

.method private static native isGifAnimationCompletedJNI(J)Z
.end method

.method public static openGifFd(Ljava/io/FileDescriptor;JZ)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFdJNI(Ljava/io/FileDescriptor;JZ)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0
.end method

.method private static native openGifFdJNI(Ljava/io/FileDescriptor;JZ)Lorg/lasque/tusdk/core/utils/image/GifHelper;
.end method

.method public static openGifFile(Ljava/lang/String;Z)Lorg/lasque/tusdk/core/utils/image/GifHelper;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->openGifFileJNI(Ljava/lang/String;Z)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p0

    return-object p0
.end method

.method private static native openGifFileJNI(Ljava/lang/String;Z)Lorg/lasque/tusdk/core/utils/image/GifHelper;
.end method

.method public static renderGifFrame(JLandroid/graphics/Bitmap;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->renderGifFrameJNI(JLandroid/graphics/Bitmap;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native renderGifFrameJNI(JLandroid/graphics/Bitmap;)J
.end method

.method public static resetGif(J)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->resetGifJNI(J)Z

    move-result p0

    return p0
.end method

.method private static native resetGifJNI(J)Z
.end method

.method public static restoreGifRemainder(J)J
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->restoreGifRemainderJNI(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native restoreGifRemainderJNI(J)J
.end method

.method public static saveGifRemainder(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->saveGifRemainderJNI(J)V

    return-void
.end method

.method private static native saveGifRemainderJNI(J)V
.end method

.method public static setGifLoopCount(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->setGifLoopCountJNI(JI)V

    return-void
.end method

.method private static native setGifLoopCountJNI(JI)V
.end method

.method public static setGifSpeedFactor(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->setGifSpeedFactorJNI(JF)V

    return-void
.end method

.method private static native setGifSpeedFactorJNI(JF)V
.end method
