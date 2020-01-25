.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;
.super Ljava/lang/Object;
.source "SelfTimer.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->initResBySwitch(Ljava/lang/String;)V

    return-void
.end method
