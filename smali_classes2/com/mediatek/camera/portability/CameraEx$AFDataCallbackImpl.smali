.class Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;
.super Ljava/lang/Object;
.source "CameraEx.java"

# interfaces
.implements Landroid/hardware/Camera$AFDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/CameraEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AFDataCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/camera/portability/CameraEx;


# direct methods
.method private constructor <init>(Lcom/mediatek/camera/portability/CameraEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;)V

    return-void
.end method


# virtual methods
.method public onAFData([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/mediatek/camera/portability/CameraEx$AFDataCallbackImpl;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-static {p2}, Lcom/mediatek/camera/portability/CameraEx;->access$800(Lcom/mediatek/camera/portability/CameraEx;)Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x20

    invoke-interface {p2, v1, p1, v0, v0}, Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;->onDataCallback(I[BII)V

    return-void
.end method
