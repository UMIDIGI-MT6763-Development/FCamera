.class Lcom/freeme/camera/SecureCameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/SecureCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/SecureCameraActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/SecureCameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/SecureCameraActivity$1;->this$0:Lcom/freeme/camera/SecureCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/SecureCameraActivity$1;->this$0:Lcom/freeme/camera/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/SecureCameraActivity;->finish()V

    invoke-static {}, Lcom/freeme/camera/SecureCameraActivity;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "mScreenOffReceiver receive"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
