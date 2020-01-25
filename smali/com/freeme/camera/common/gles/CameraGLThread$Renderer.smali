.class public interface abstract Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;
.super Ljava/lang/Object;
.source "CameraGLThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/gles/CameraGLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract onDrawFrame()V
.end method

.method public abstract onGLThreadStarted()V
.end method

.method public abstract prepareFirstSwapBuffer()V
.end method

.method public abstract prepareSecondSwapBuffer()V
.end method
