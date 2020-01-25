.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;
.super Ljava/lang/Object;
.source "SelfTimer.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method
