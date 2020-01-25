.class Lcom/freeme/camera/common/utils/CameraUtil$2$1;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/utils/CameraUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/utils/CameraUtil$2;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/utils/CameraUtil$2;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/utils/CameraUtil$2$1;->this$0:Lcom/freeme/camera/common/utils/CameraUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/utils/CameraUtil$2$1;->this$0:Lcom/freeme/camera/common/utils/CameraUtil$2;

    iget-object p1, p1, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
