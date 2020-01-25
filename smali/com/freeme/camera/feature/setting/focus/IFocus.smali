.class interface abstract Lcom/freeme/camera/feature/setting/focus/IFocus;
.super Ljava/lang/Object;
.source "IFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;,
        Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;,
        Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;
    }
.end annotation


# virtual methods
.method public abstract initAppSupportedEntryValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initPlatformSupportedValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSettingEntryValues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
