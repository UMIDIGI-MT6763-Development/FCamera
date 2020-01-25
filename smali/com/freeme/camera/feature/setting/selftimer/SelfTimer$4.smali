.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;
.super Ljava/lang/Object;
.source "SelfTimer.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$BackPressedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->onInterrupt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
