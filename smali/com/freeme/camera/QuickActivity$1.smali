.class Lcom/freeme/camera/QuickActivity$1;
.super Ljava/lang/Object;
.source "QuickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/QuickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/QuickActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/QuickActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/QuickActivity$1;->this$0:Lcom/freeme/camera/QuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/QuickActivity$1;->this$0:Lcom/freeme/camera/QuickActivity;

    invoke-static {v0}, Lcom/freeme/camera/QuickActivity;->access$000(Lcom/freeme/camera/QuickActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/QuickActivity;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "delayed Runnable --> onPermissionResumeTasks()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/QuickActivity$1;->this$0:Lcom/freeme/camera/QuickActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/QuickActivity;->access$002(Lcom/freeme/camera/QuickActivity;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/QuickActivity$1;->this$0:Lcom/freeme/camera/QuickActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/QuickActivity;->onPermissionResumeTasks()V

    :cond_0
    return-void
.end method
