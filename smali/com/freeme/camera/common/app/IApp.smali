.class public interface abstract Lcom/freeme/camera/common/app/IApp;
.super Ljava/lang/Object;
.source "IApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;,
        Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;,
        Lcom/freeme/camera/common/app/IApp$BackPressedListener;,
        Lcom/freeme/camera/common/app/IApp$KeyEventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRIORITY:I = 0x7fffffff


# virtual methods
.method public abstract disableGSensorOrientation()V
.end method

.method public abstract enableGSensorOrientation()V
.end method

.method public abstract enableKeepScreenOn(Z)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getAppUi()Lcom/freeme/camera/common/IAppUi;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getAutoExitValue()Ljava/lang/String;
.end method

.method public abstract getBitmap()I
.end method

.method public abstract getCurrentCameraMode()I
.end method

.method public abstract getGSensorOrientation()I
.end method

.method public abstract getHdrSupported()Z
.end method

.method public abstract getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;
.end method

.method public abstract notifyCameraSelected(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract notifyNewMedia(Landroid/net/Uri;Z)V
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract registerBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;I)V
    .param p1    # Lcom/freeme/camera/common/app/IApp$BackPressedListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V
    .param p1    # Lcom/freeme/camera/common/app/IApp$KeyEventListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V
.end method

.method public abstract setAutoExitValue(Ljava/lang/String;)V
.end method

.method public abstract setCurrentCameraMode(I)V
.end method

.method public abstract setHdrSupported(Z)V
.end method

.method public abstract unRegisterBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;)V
    .param p1    # Lcom/freeme/camera/common/app/IApp$BackPressedListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V
    .param p1    # Lcom/freeme/camera/common/app/IApp$KeyEventListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V
.end method
