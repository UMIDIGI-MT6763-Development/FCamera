.class public Lcom/mediatek/camera/portability/AdvancedCamera;
.super Ljava/lang/Object;
.source "AdvancedCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preSetSession(ILandroid/hardware/camera2/CaptureRequest;)V
    .locals 8

    const-string v0, "com.mediatek.advcam.IAdvCamService$Stub"

    invoke-static {v0}, Lcom/mediatek/camera/portability/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "media.advcam"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setConfigureParam"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Landroid/hardware/camera2/CaptureRequest;

    aput-object v7, v6, v2

    invoke-static {v1, v3, v6}, Lcom/mediatek/camera/portability/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v5

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mediatek/camera/portability/ReflectUtil;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
