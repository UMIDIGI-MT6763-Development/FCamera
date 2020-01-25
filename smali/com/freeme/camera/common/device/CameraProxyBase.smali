.class public abstract Lcom/freeme/camera/common/device/CameraProxyBase;
.super Ljava/lang/Object;
.source "CameraProxyBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApiType()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
