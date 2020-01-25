.class public Lcom/freeme/camera/CameraInterfaceManage;
.super Ljava/lang/Object;
.source "CameraInterfaceManage.java"


# static fields
.field public static cameraExt:Lcom/freeme/camera/ICameraExt;

.field private static instance:Lcom/freeme/camera/CameraInterfaceManage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/freeme/camera/CameraInterfaceManage;
    .locals 1

    sget-object v0, Lcom/freeme/camera/CameraInterfaceManage;->instance:Lcom/freeme/camera/CameraInterfaceManage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/CameraInterfaceManage;

    invoke-direct {v0}, Lcom/freeme/camera/CameraInterfaceManage;-><init>()V

    sput-object v0, Lcom/freeme/camera/CameraInterfaceManage;->instance:Lcom/freeme/camera/CameraInterfaceManage;

    :cond_0
    sget-object v0, Lcom/freeme/camera/CameraInterfaceManage;->instance:Lcom/freeme/camera/CameraInterfaceManage;

    return-object v0
.end method


# virtual methods
.method public setCameraExt(Lcom/freeme/camera/ICameraExt;)V
    .locals 0

    sput-object p1, Lcom/freeme/camera/CameraInterfaceManage;->cameraExt:Lcom/freeme/camera/ICameraExt;

    return-void
.end method
