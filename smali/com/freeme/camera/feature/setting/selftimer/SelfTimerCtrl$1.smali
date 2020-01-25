.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$1;
.super Ljava/lang/Object;
.source "SelfTimerCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->startSelfTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl$1;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->onInterrupt(Z)Z

    return-void
.end method
