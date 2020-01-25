.class Lcom/freeme/camera/common/thermal/WarningDialog$2;
.super Ljava/lang/Object;
.source "WarningDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/thermal/WarningDialog;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/thermal/WarningDialog;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog$2;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog$2;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-static {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->access$100(Lcom/freeme/camera/common/thermal/WarningDialog;)Lcom/freeme/camera/common/widget/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog$2;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-static {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->access$100(Lcom/freeme/camera/common/thermal/WarningDialog;)Lcom/freeme/camera/common/widget/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
