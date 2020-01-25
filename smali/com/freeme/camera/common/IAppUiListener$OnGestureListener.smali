.class public interface abstract Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;
.super Ljava/lang/Object;
.source "IAppUiListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/IAppUiListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGestureListener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(FF)Z
.end method

.method public abstract onDown(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onLongPress(FF)Z
.end method

.method public abstract onScale(Landroid/view/ScaleGestureDetector;)Z
.end method

.method public abstract onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
.end method

.method public abstract onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTapConfirmed(FF)Z
.end method

.method public abstract onSingleTapUp(FF)Z
.end method

.method public abstract onUp(Landroid/view/MotionEvent;)Z
.end method
