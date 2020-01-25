.class Lcom/freeme/camera/feature/setting/dng/Dng$4;
.super Ljava/lang/Object;
.source "Dng.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$4;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCachedValue()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$4;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$100(Lcom/freeme/camera/feature/setting/dng/Dng;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemViewClick(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$4;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$1000(Lcom/freeme/camera/feature/setting/dng/Dng;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$4;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$1000(Lcom/freeme/camera/feature/setting/dng/Dng;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUpdatedValue()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$4;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
