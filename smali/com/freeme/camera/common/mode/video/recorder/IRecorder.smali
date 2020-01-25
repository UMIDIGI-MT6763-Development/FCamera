.class public interface abstract Lcom/freeme/camera/common/mode/video/recorder/IRecorder;
.super Ljava/lang/Object;
.source "IRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;
    }
.end annotation


# virtual methods
.method public abstract getMediaRecorder()Landroid/media/MediaRecorder;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract init(Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;Landroid/app/Activity;)V
    .param p1    # Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
