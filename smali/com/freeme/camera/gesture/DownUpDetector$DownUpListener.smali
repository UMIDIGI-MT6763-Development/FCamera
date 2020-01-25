.class public interface abstract Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/DownUpDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownUpListener"
.end annotation


# virtual methods
.method public abstract onDownEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onUpEvent(Landroid/view/MotionEvent;)V
.end method
