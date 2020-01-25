.class Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;
.super Ljava/lang/Object;
.source "SaveSdcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->refreshViewEntry()V

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$1000(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    iget-object v3, v3, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$900(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$1100(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V

    return-void
.end method
