.class Lcom/freeme/camera/feature/setting/dng/Dng$2;
.super Ljava/lang/Object;
.source "Dng.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/Dng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/Dng;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$2;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$2;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$100(Lcom/freeme/camera/feature/setting/dng/Dng;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$200(Lcom/freeme/camera/feature/setting/dng/Dng;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreviewStarted] needOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$2;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$300(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$2;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$400(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
