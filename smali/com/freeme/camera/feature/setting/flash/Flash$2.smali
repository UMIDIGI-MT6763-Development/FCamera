.class Lcom/freeme/camera/feature/setting/flash/Flash$2;
.super Ljava/lang/Object;
.source "Flash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/flash/Flash;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

.field final synthetic val$supportValues:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->val$supportValues:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->val$supportValues:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->val$supportValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->showQuickSwitchIcon(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$400(Lcom/freeme/camera/feature/setting/flash/Flash;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash$2;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->showQuickSwitchIcon(Z)V

    :cond_2
    :goto_1
    return-void
.end method
