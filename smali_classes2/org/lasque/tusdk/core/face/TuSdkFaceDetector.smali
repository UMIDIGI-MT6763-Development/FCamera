.class public Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->shared()Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;->LIB_FACE:Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/NativeLibraryHelper;->loadLibrary(Lorg/lasque/tusdk/core/utils/NativeLibraryHelper$NativeLibType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/high16 v0, 0x44000000    # 512.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, p0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->initJNI()V

    return-void
.end method

.method private static native initJNI()V
.end method

.method public static markFace(Landroid/graphics/Bitmap;)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFace(Landroid/graphics/Bitmap;I)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p0

    return-object p0
.end method

.method public static markFace(Landroid/graphics/Bitmap;I)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceJNI(Landroid/graphics/Bitmap;I)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static markFaceGrayImage(IIIDZ[B)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    if-lt p1, v0, :cond_1

    if-eqz p6, :cond_1

    array-length v0, p6

    mul-int v1, p0, p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p6}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceWithGrayImageJNI(IIIDZ[B)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native markFaceJNI(Landroid/graphics/Bitmap;I)[Lorg/lasque/tusdk/core/face/FaceAligment;
.end method

.method public static markFaceVideo(IID)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceWithGL2JNI(IID)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static markFaceVideo(IID[I)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    if-lt p1, v0, :cond_1

    if-eqz p4, :cond_1

    array-length v0, p4

    mul-int v1, p0, p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceWithGL2ExtJNI(IID[I)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native markFaceWithGL2ExtJNI(IID[I)[Lorg/lasque/tusdk/core/face/FaceAligment;
.end method

.method private static native markFaceWithGL2JNI(IID)[Lorg/lasque/tusdk/core/face/FaceAligment;
.end method

.method private static native markFaceWithGrayImageJNI(IIIDZ[B)[Lorg/lasque/tusdk/core/face/FaceAligment;
.end method
