.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;
.super Ljava/lang/Object;
.source "MatrixDisplayRequestConfig.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v3, "[onImageAvailable] acquireNextImage return false, return"

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v6

    iget-object v7, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)[[B

    move-result-object v7

    iget-object v8, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v8}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)I

    move-result v8

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v3

    const-string v4, "[onImageAvailable] mPreviewBuffers[mCursor] is null, return"

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    monitor-exit v2

    return-void

    :cond_1
    iget-object v7, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)[[B

    move-result-object v7

    iget-object v8, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v8}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)I

    move-result v8

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    move v10, v9

    move v9, v8

    :goto_0
    array-length v11, v3

    if-ge v9, v11, :cond_3

    aget-object v11, v3, v9

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    if-ge v10, v11, :cond_2

    aget-object v10, v3, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-array v9, v10, [B

    move v10, v8

    move v11, v10

    :goto_1
    array-length v12, v3

    if-ge v10, v12, :cond_f

    aget-object v12, v3, v10

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v13, v3, v10

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    aget-object v14, v3, v10

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v10, :cond_4

    move v15, v4

    goto :goto_2

    :cond_4
    div-int/lit8 v15, v4, 0x2

    :goto_2
    if-nez v10, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    div-int/lit8 v16, v5, 0x2

    move/from16 v8, v16

    :goto_3
    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v16

    move-object/from16 v17, v3

    div-int/lit8 v3, v16, 0x8

    move/from16 v16, v4

    const/16 v4, 0x23

    if-ne v6, v4, :cond_9

    mul-int/2addr v15, v8

    if-nez v10, :cond_6

    invoke-virtual {v12, v7, v11, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    if-ne v10, v3, :cond_7

    add-int v3, v11, v15

    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_7
    const/4 v3, 0x2

    if-ne v10, v3, :cond_8

    sub-int v3, v11, v15

    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_8
    :goto_4
    add-int/2addr v11, v15

    goto :goto_8

    :cond_9
    const v4, 0x32315659

    if-ne v6, v4, :cond_e

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v8, :cond_d

    if-ne v14, v3, :cond_a

    move/from16 v18, v5

    mul-int v5, v15, v3

    invoke-virtual {v12, v7, v11, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v11, v5

    move/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    move/from16 v18, v5

    add-int/lit8 v5, v15, -0x1

    mul-int/2addr v5, v14

    add-int/2addr v5, v3

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v9, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v20, v11

    move v11, v3

    :goto_6
    if-ge v11, v15, :cond_b

    add-int/lit8 v21, v20, 0x1

    mul-int v22, v11, v14

    aget-byte v22, v9, v22

    aput-byte v22, v7, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v21

    goto :goto_6

    :cond_b
    move/from16 v11, v20

    :goto_7
    add-int/lit8 v3, v8, -0x1

    if-ge v4, v3, :cond_c

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v5

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    move/from16 v3, v19

    goto :goto_5

    :cond_d
    move/from16 v18, v5

    goto :goto_9

    :cond_e
    :goto_8
    move/from16 v18, v5

    :goto_9
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/IPreviewFrameCallback;->onPreviewFrameAvailable([B)V

    :cond_10
    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$208(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;->access$202(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRequestConfig;I)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
