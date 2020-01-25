.class public interface abstract Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;
.super Ljava/lang/Object;
.source "IVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;,
        Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;
    }
.end annotation


# static fields
.field public static final REACH_SIZE_LIMIT:I = 0x5

.field public static final VIDEO_BAD_PERFORMANCE_AUTO_STOP:I = 0x1

.field public static final VIDEO_RECORDING_ERROR:I = 0x4

.field public static final VIDEO_RECORDING_NOT_AVAILABLE:I = 0x2


# virtual methods
.method public abstract initVideoUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)V
    .param p1    # Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract showInfo(I)V
.end method

.method public abstract unInitVideoUI()V
.end method

.method public abstract updateOrientation(I)V
.end method

.method public abstract updateRecordingSize(J)V
.end method

.method public abstract updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V
.end method
