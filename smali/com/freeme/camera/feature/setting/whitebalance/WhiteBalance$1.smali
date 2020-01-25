.class Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;
.super Ljava/lang/Object;
.source "WhiteBalance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->updateIndicator(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
