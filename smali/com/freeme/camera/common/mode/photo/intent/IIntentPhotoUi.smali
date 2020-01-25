.class public interface abstract Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;
.super Ljava/lang/Object;
.source "IIntentPhotoUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;,
        Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;
    }
.end annotation


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isShown()Z
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPictureReceived([B)V
.end method

.method public abstract setOkButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;)V
.end method

.method public abstract setRetakeButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;)V
.end method

.method public abstract show()V
.end method
