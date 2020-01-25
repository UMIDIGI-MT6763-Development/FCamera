.class public Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# static fields
.field public static final FORMAT_TAG:Ljava/lang/String; = "thumbnail"

.field public static final IMAGE_BUFFER_FORMAT:I = 0x23

.field public static final POST_VIEW_FORMAT:I = 0x11

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static VERBOSE:Z

.field private static mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private static mFindSize:Z

.field private static mHeight:I

.field private static volatile mIsSupport:Z

.field private static mKeyRequestSize:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private static volatile mOverrideSupportValue:Z

.field private static mThumbnailSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static mViewWidth:I

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mOverrideSupportValue:Z

    sput-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mFindSize:Z

    sput-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    aput v2, v0, v1

    sget-object v1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mKeyRequestSize:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static getThumbnailHeight()I
    .locals 1

    sget v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    return v0
.end method

.method public static getThumbnailWidth()I
    .locals 1

    sget v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    return v0
.end method

.method public static getYUVBuffer(Landroid/media/Image;)[B
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    mul-int v5, v2, v3

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    sget-boolean v8, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->VERBOSE:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getYUVBuffer] get data from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " planes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    move v9, v6

    move v10, v9

    const/4 v11, 0x1

    :goto_0
    array-length v12, v4

    if-ge v9, v12, :cond_8

    const/4 v12, 0x2

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v10, v5

    move v11, v12

    goto :goto_1

    :pswitch_1
    add-int/lit8 v10, v5, 0x1

    move v11, v12

    goto :goto_1

    :pswitch_2
    move v10, v6

    const/4 v11, 0x1

    :goto_1
    aget-object v12, v4, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    aget-object v14, v4, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    sget-boolean v15, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->VERBOSE:Z

    if-eqz v15, :cond_1

    sget-object v15, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getYUVBuffer] pixelStride "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v6, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[getYUVBuffer] rowStride "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v6, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[getYUVBuffer] width "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v6, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[getYUVBuffer] height "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v6, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[getYUVBuffer] buffer size "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    if-nez v9, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    shr-int v8, v2, v6

    shr-int v15, v3, v6

    move/from16 v16, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v6

    mul-int/2addr v2, v13

    move/from16 v17, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v6

    mul-int/2addr v3, v14

    add-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v15, :cond_6

    const/4 v3, 0x1

    if-ne v14, v3, :cond_3

    if-ne v11, v3, :cond_3

    invoke-virtual {v12, v1, v10, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v8

    move v6, v8

    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v8, -0x1

    mul-int/2addr v6, v14

    add-int/2addr v6, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v7, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v18, v10

    move v10, v3

    :goto_4
    if-ge v10, v8, :cond_4

    mul-int v19, v10, v14

    aget-byte v19, v7, v19

    aput-byte v19, v1, v18

    add-int v18, v18, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    move/from16 v10, v18

    :goto_5
    add-int/lit8 v3, v15, -0x1

    if-ge v2, v3, :cond_5

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v6

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->VERBOSE:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getYUVBuffer] Finished reading data from plane "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    return-object v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format not support!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPostViewOverrideSupported()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mOverrideSupportValue:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPostViewSupported()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    return v0
.end method

.method public static overrideSupportedValue(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPostViewSupportedValue] key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sput-boolean p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mOverrideSupportValue:Z

    return-void
.end method

.method public static setApp(Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    invoke-interface {p0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p0

    invoke-interface {p0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result p0

    sput p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    sget p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    sput p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mViewWidth:I

    return-void
.end method

.method public static setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;I)V
    .locals 1

    sput-object p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->isThumbnailPostViewSupport()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[setCameraCharacteristics], mIsSupport = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-boolean p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyPostViewRequestSizeMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    sput-object p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mKeyRequestSize:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[setCameraCharacteristics], mKeyRequestSize = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mKeyRequestSize:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getAvailableThumbnailSizes()Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mThumbnailSizes:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public static setDefaultJpegThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    new-instance v0, Landroid/util/Size;

    sget v1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    sget v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static updateThumbnailSize(D)V
    .locals 11

    sget v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mViewWidth:I

    mul-int v1, v0, v0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mFindSize:Z

    sput v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    sput v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateThumbnailSize], original, mWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mThumbnailSizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double v7, p0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, v4

    if-gtz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    sput v7, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    sput v6, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    goto :goto_0

    :cond_2
    array-length p0, v0

    move p1, v2

    :goto_1
    if-ge p1, p0, :cond_4

    aget-object v3, v0, p1

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    sget v5, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sget v4, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateThumbnailSize 1], mWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mFindSize:Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    sget-boolean p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mFindSize:Z

    if-nez p0, :cond_8

    sget-boolean p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mIsSupport:Z

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    array-length p0, v0

    const p1, 0x7fffffff

    :goto_2
    if-ge v2, p0, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-lez v4, :cond_6

    if-gt v4, p1, :cond_6

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p1

    sput p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p1

    sput p1, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    move p1, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateThumbnailSize 2], mWidth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/freeme/camera/feature/mode/portrait/ThumbnailHelper;->mHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method
