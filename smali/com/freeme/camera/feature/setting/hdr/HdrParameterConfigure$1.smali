.class Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 1

    const-string p1, "auto"

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x9

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$202(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;I)I

    return-void

    :cond_0
    const/16 p1, 0xa

    if-eq p1, p3, :cond_1

    if-eq p2, p3, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)I

    move-result p2

    if-eq p2, p3, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onDataCallback], mLastScene: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentScene: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onAutoDetectionResult(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onAutoDetectionResult(Z)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->access$202(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;I)I

    :cond_3
    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
