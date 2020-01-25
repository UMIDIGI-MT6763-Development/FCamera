.class Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;
.super Lcom/freeme/camera/common/jpeg/encoder/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mFormat:I

.field private mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeBuffer:J

.field private mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;I)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mFormat:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mFormat:I

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->access$900(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;)V

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synchronized native nativeCreatePlanes(II)[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native nativeGetFormat(I)I
.end method

.method private synchronized native nativeGetHeight()I
.end method

.method private synchronized native nativeGetWidth()I
.end method

.method private setDetached(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v0, p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$600(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;Lcom/freeme/camera/common/jpeg/encoder/Image;)V

    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getImageFormat()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mFormat:I

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNativeContext()J
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method getOwner()Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->getOwner()Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$700(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$800(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->nativeCreatePlanes(II)[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mPlanes:[Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;

    return-object v0
.end method

.method public getReader()Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isAttachable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iput-wide p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->mTimestamp:J

    return-void
.end method
