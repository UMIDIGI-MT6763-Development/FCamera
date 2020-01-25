.class Lcom/freeme/camera/common/thermal/WarningDialog$4;
.super Ljava/lang/Object;
.source "WarningDialog.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/thermal/WarningDialog;
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

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog$4;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog$4;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-static {v0}, Lcom/freeme/camera/common/thermal/WarningDialog;->access$200(Lcom/freeme/camera/common/thermal/WarningDialog;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/WarningDialog$4;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-static {v1}, Lcom/freeme/camera/common/thermal/WarningDialog;->access$100(Lcom/freeme/camera/common/thermal/WarningDialog;)Lcom/freeme/camera/common/widget/RotateLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method
