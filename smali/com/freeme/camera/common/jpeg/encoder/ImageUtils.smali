.class Lcom/freeme/camera/common/jpeg/encoder/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 0

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Lcom/freeme/camera/common/jpeg/encoder/Image;I)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Invalid image format %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :sswitch_1
    if-nez p1, :cond_0

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :sswitch_2
    if-nez p1, :cond_1

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :sswitch_3
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x14 -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x100 -> :sswitch_3
        0x32315659 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 2

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    const v0, 0x32315659

    if-eq p2, v0, :cond_0

    const v0, 0x44363159

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "Invalid format specified %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_0

    :pswitch_2
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_0

    :pswitch_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_0
    :pswitch_4
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_1
    :pswitch_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :goto_0
    mul-int/2addr p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, v0

    int-to-double p2, p3

    mul-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 3

    const/16 v0, 0x14

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const v0, 0x44363159

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Invalid format specified %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    :pswitch_2
    const/4 p0, 0x3

    return p0

    :cond_1
    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static imageCopy(Lcom/freeme/camera/common/jpeg/encoder/Image;Lcom/freeme/camera/common/jpeg/encoder/Image;)V
    .locals 14

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_7

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getPlanes()[Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getPlanes()[Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getRowStride()I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getRowStride()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v8, p1, v2

    invoke-virtual {v8}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getPixelStride()I

    move-result v8

    if-ne v7, v8, :cond_3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-ne v3, v4, :cond_0

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-static {p0, v2}, Lcom/freeme/camera/common/jpeg/encoder/ImageUtils;->getEffectivePlaneSizeForImage(Lcom/freeme/camera/common/jpeg/encoder/Image;I)Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    aget-object v12, v0, v2

    invoke-virtual {v12}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getPixelStride()I

    move-result v12

    mul-int/2addr v11, v12

    move v12, v9

    move v9, v8

    move v8, v1

    :goto_1
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-ge v8, v13, :cond_2

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    sub-int/2addr v13, v9

    if-le v11, v13, :cond_1

    move v11, v13

    :cond_1
    invoke-static {v5, v9, v6, v12, v11}, Lcom/freeme/camera/common/jpeg/encoder/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v9, v3

    add-int/2addr v12, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source plane image pixel stride "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getPixelStride()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " must be same as destination image pixel stride "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getPixelStride()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source image size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is different with destination image size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PRIVATE format images are not copyable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Src and dst images should have the same format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Images should be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
