.class public abstract Lcom/freeme/camera/common/jpeg/encoder/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field protected mIsImageValid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/Image;->mIsImageValid:Z

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method getNativeContext()J
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPlanes()[Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method isAttachable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/Image;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method protected throwISEIfImageIsInvalid()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/Image;->mIsImageValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
