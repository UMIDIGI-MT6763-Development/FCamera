.class public interface abstract Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VendorDataCallback"
.end annotation


# virtual methods
.method public abstract onDataCallback(I[BII)V
.end method

.method public abstract onDataTaken(Landroid/os/Message;)V
.end method
