.class public interface abstract Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;
.super Ljava/lang/Object;
.source "IHdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/IHdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract isZsdHdrSupported()Z
.end method

.method public abstract onHdrValueChanged()V
.end method

.method public abstract onPreviewStateChanged(Z)V
.end method

.method public abstract setCameraId(I)V
.end method

.method public abstract updateModeDeviceState(Ljava/lang/String;)V
.end method
