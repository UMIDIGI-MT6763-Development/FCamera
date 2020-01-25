.class Lcom/mediatek/camera/portability/CameraEx$1;
.super Ljava/lang/Object;
.source "CameraEx.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/camera/portability/CameraEx;->setDngCallback(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/camera/portability/CameraEx;


# direct methods
.method constructor <init>(Lcom/mediatek/camera/portability/CameraEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/portability/CameraEx$1;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMetadataReceived"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CamAp_CameraEx"

    const-string p2, "onMetadataReceived"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x16

    iput p2, p1, Landroid/os/Message;->arg1:I

    new-instance p2, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;

    iget-object v0, p0, Lcom/mediatek/camera/portability/CameraEx$1;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object p3, p3, v2

    invoke-direct {p2, v0, v1, p3}, Lcom/mediatek/camera/portability/CameraEx$MessageInfo;-><init>(Lcom/mediatek/camera/portability/CameraEx;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/mediatek/camera/portability/CameraEx$1;->this$0:Lcom/mediatek/camera/portability/CameraEx;

    invoke-static {p2}, Lcom/mediatek/camera/portability/CameraEx;->access$800(Lcom/mediatek/camera/portability/CameraEx;)Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;->onDataTaken(Landroid/os/Message;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
