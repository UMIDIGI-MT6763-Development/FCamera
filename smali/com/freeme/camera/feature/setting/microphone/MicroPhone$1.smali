.class Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;
.super Ljava/lang/Object;
.source "MicroPhone.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/microphone/MicroPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCachedValue()Z
    .locals 5

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->access$400(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemViewClick(Z)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onItemViewClick], isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->access$100(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->access$300(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1$1;-><init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
