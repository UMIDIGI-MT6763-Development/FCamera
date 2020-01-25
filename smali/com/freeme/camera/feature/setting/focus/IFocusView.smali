.class interface abstract Lcom/freeme/camera/feature/setting/focus/IFocusView;
.super Ljava/lang/Object;
.source "IFocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;
    }
.end annotation


# virtual methods
.method public abstract centerFocusLocation()V
.end method

.method public abstract isActiveFocusRunning()Z
.end method

.method public abstract isPassiveFocusRunning()Z
.end method

.method public abstract setFocusLocation(FF)V
.end method

.method public abstract startActiveFocus()V
.end method

.method public abstract startPassiveFocus()V
.end method

.method public abstract stopFocusAnimations()V
.end method

.method public abstract stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
.end method
