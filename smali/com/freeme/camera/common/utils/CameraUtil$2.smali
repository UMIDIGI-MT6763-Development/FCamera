.class final Lcom/freeme/camera/common/utils/CameraUtil$2;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/utils/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/freeme/camera/common/utils/CameraUtil$2$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/utils/CameraUtil$2$1;-><init>(Lcom/freeme/camera/common/utils/CameraUtil$2;)V

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isFreemeTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    sget v3, Lcom/freeme/camera/common/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/common/utils/CameraUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[showErrorAndFinish] activity is finishing, do noting"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method
