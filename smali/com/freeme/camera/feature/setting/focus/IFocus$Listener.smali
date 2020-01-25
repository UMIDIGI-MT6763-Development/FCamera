.class public interface abstract Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;
.super Ljava/lang/Object;
.source "IFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/IFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract disableUpdateFocusState(Z)V
.end method

.method public abstract doAfTriggerBeforeCapture()V
.end method

.method public abstract getCurrentFocusMode()Ljava/lang/String;
.end method

.method public abstract isFocusCanDo()Z
.end method

.method public abstract needWaitAfTriggerDone()Z
.end method

.method public abstract overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetConfiguration()V
.end method

.method public abstract restoreContinue()V
.end method

.method public abstract setWaitCancelAutoFocus(Z)V
.end method

.method public abstract updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFocusCallback()V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method
