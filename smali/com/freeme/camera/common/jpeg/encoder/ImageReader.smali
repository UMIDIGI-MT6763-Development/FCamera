.class public Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;,
        Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;,
        Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageReader"


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/jpeg/encoder/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_jpegencoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    iput p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mWidth:I

    iput p2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mHeight:I

    iput p3, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    iput p4, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mMaxImages:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    iget v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mMaxImages:I

    if-lt v1, v0, :cond_1

    const/16 v1, 0x11

    if-eq p3, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    invoke-static {v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mNumPlanes:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object p4

    iput-object p4, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mSurface:Landroid/view/Surface;

    iput-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mIsReaderValid:Z

    invoke-static {p1, p2, p3, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mEstimatedNativeAllocBytes:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NV21 format is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum outstanding image count must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The image dimensions must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListener:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mCloseLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mIsReaderValid:Z

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;Lcom/freeme/camera/common/jpeg/encoder/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->releaseImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    return p0
.end method

.method private acquireNextSurfaceImage(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;)I
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mIsReaderValid:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeImageSetup(Lcom/freeme/camera/common/jpeg/encoder/Image;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_1

    :pswitch_0
    iput-boolean v2, p1, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsImageValid:Z

    :pswitch_1
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isImageOwnedbyMe(Lcom/freeme/camera/common/jpeg/encoder/Image;)Z
    .locals 2

    instance-of v0, p1, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->getReader()Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    move-result-object p1

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeDetachImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)I
.end method

.method private synchronized native nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native nativeImageSetup(Lcom/freeme/camera/common/jpeg/encoder/Image;)I
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native nativeReleaseImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)V
.end method

.method public static newInstance(IIII)Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;-><init>(IIII)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 1

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private releaseImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)V
    .locals 2

    instance-of v0, p1, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    iget-boolean v1, v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->getReader()Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->access$000(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeReleaseImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsImageValid:Z

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This image was not produced by this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This image was not produced by an ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquireLatestImage()Lcom/freeme/camera/common/jpeg/encoder/Image;
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->acquireNextImage()Lcom/freeme/camera/common/jpeg/encoder/Image;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->acquireNextImageNoThrowISE()Lcom/freeme/camera/common/jpeg/encoder/Image;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->close()V

    :cond_2
    throw v1
.end method

.method public acquireNextImage()Lcom/freeme/camera/common/jpeg/encoder/Image;
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    iget v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;-><init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;I)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->acquireNextSurfaceImage(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mMaxImages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Lcom/freeme/camera/common/jpeg/encoder/Image;
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    iget v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;-><init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;I)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->acquireNextSurfaceImage(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->setOnImageAvailableListener(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mIsReaderValid:Z

    iget-object v2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/jpeg/encoder/Image;

    invoke-virtual {v3}, Lcom/freeme/camera/common/jpeg/encoder/Image;->close()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeClose()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v0, :cond_2

    iput v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mEstimatedNativeAllocBytes:I

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method detachImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->isImageOwnedbyMe(Lcom/freeme/camera/common/jpeg/encoder/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->nativeDetachImage(Lcom/freeme/camera/common/jpeg/encoder/Image;)I

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->access$100(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image was already detached from this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input image must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, p2, :cond_2

    :cond_1
    new-instance v1, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, p2}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;-><init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    :cond_2
    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListener:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler is null but the current thread is not a looper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListener:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->mListenerHandler:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
