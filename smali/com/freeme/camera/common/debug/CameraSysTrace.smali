.class public Lcom/freeme/camera/common/debug/CameraSysTrace;
.super Ljava/lang/Object;
.source "CameraSysTrace.java"


# static fields
.field private static final CAMPERFORMANCEPREFIX:Ljava/lang/String; = "[CamPtracker]"

.field private static final DEBUG:Z

.field private static final PERFORMANCE_FILE:Ljava/lang/String; = "/cameraPerformance.txt"

.field private static sFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/cameraPerformance.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/debug/CameraSysTrace;->sFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/freeme/camera/common/debug/CameraSysTrace;->sFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/common/debug/CameraSysTrace;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEventSystrace(Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lcom/freeme/camera/common/debug/CameraSysTrace;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/freeme/camera/common/debug/LogUtil;->getAndroidSDKVersion()I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CamPtracker]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/mediatek/camera/portability/CameraPerformanceTrace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mediatek/camera/portability/CameraPerformanceTrace;->endSection()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
