.class public Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;
.super Lcom/baidu/aip/imageclassify/AipImageClassify;
.source "AipImageClassifyClient.java"


# static fields
.field private static aiClassifyClient:Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/imageclassify/AipImageClassify;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getAiClassifyClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;->aiClassifyClient:Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;->aiClassifyClient:Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;->aiClassifyClient:Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;->aiClassifyClient:Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    return-object p0
.end method
