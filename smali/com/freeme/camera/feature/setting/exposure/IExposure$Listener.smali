.class public interface abstract Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;
.super Ljava/lang/Object;
.source "IExposure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/IExposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract checkTodoCapturAfterAeConverted()Z
.end method

.method public abstract getAeLock()Z
.end method

.method public abstract needConsiderAePretrigger()Z
.end method

.method public abstract overrideExposureValue(Ljava/lang/String;Ljava/util/List;)V
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

.method public abstract setAeLock(Z)V
.end method

.method public abstract updateEv(I)V
.end method
