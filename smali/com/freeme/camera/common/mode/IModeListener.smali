.class public interface abstract Lcom/freeme/camera/common/mode/IModeListener;
.super Ljava/lang/Object;
.source "IModeListener.java"


# virtual methods
.method public abstract create(Lcom/freeme/camera/common/app/IApp;)V
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentMode()Lcom/freeme/camera/common/mode/ICameraMode;
.end method

.method public abstract onCameraSelected(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onUserInteraction()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setAnimationListener(Lcom/freeme/camera/common/mode/AnimationListener;)V
.end method
