.class Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;
.super Ljava/lang/Object;
.source "CameraEx.java"

# interfaces
.implements Landroid/hardware/Camera$AutoRamaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/CameraEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRamaCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/camera/portability/CameraEx;


# direct methods
.method private constructor <init>(Lcom/mediatek/camera/portability/CameraEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/camera/portability/CameraEx;Lcom/mediatek/camera/portability/CameraEx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;-><init>(Lcom/mediatek/camera/portability/CameraEx;)V

    return-void
.end method


# virtual methods
.method public onCapture([B)V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/camera/portability/CameraEx$AutoRamaCallbackImpl;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-static {v0}, Lcom/mediatek/camera/portability/CameraEx;->access$800(Lcom/mediatek/camera/portability/CameraEx;)Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;->onDataCallback(I[BII)V

    return-void
.end method
