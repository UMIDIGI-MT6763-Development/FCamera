.class public Lcom/bvirtual/SmoothBlurJni;
.super Ljava/lang/Object;
.source "SmoothBlurJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmoothBlur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native smoothRender(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/bvirtual/BlurInfo;)V
.end method
