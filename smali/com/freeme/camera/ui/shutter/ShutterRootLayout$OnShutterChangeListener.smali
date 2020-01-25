.class public interface abstract Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShutterChangeListener"
.end annotation


# virtual methods
.method public abstract getCurrentmCameraId()Ljava/lang/String;
.end method

.method public abstract getInitWhichShutter()I
.end method

.method public abstract onShutterChangedEnd()V
.end method

.method public abstract onShutterChangedStart(Ljava/lang/String;)V
.end method

.method public abstract onShutterChangedStart(Ljava/lang/String;Ljava/lang/String;)V
.end method
