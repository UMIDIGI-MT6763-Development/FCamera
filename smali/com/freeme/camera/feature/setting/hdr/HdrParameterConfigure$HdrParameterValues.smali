.class Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrParameterValues"
.end annotation


# instance fields
.field private mVideoHdrValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)V

    return-void
.end method


# virtual methods
.method public isParametersValueChanged(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->mVideoHdrValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "video-hdr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->mVideoHdrValue:Ljava/lang/String;

    const-string v2, "video-hdr"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->mVideoHdrValue:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "video-hdr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "video-hdr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isParametersChanged], changed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public setOriginalHdrValue(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string v0, "video-hdr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->mVideoHdrValue:Ljava/lang/String;

    return-void
.end method
