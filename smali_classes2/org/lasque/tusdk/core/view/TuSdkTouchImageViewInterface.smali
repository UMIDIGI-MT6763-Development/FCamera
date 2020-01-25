.class public interface abstract Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;
    }
.end annotation


# virtual methods
.method public abstract changeImageAnimation(Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;)V
.end method

.method public abstract changeRegionRatio(Landroid/graphics/Rect;F)V
.end method

.method public abstract getCurrentZoom()F
.end method

.method public abstract getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
.end method

.method public abstract getZoomedRect()Landroid/graphics/RectF;
.end method

.method public abstract isInAnimation()Z
.end method

.method public abstract setImageBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageBitmap(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
.end method

.method public abstract setImageBitmapWithAnim(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setInvalidateTargetView(Landroid/view/View;)V
.end method

.method public abstract setScaleType(Landroid/widget/ImageView$ScaleType;)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract setZoom(FFF)V
.end method
