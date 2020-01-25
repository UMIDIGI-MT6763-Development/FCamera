.class public interface abstract Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;
.super Ljava/lang/Object;
.source "IDngConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/IDngConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDngValueUpdateListener"
.end annotation


# virtual methods
.method public abstract onDisplayOrientationUpdate()I
.end method

.method public abstract onDngCreatorStateUpdate(Z)V
.end method

.method public abstract onDngValueUpdate(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onSaveDngImage([BLandroid/util/Size;)V
.end method
