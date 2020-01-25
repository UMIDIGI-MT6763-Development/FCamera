.class Lcom/freeme/camera/ui/CameraAppUI$32;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$32;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->isNeedInitSetting(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$32;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2900(Lcom/freeme/camera/ui/CameraAppUI;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$32;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$3000(Lcom/freeme/camera/ui/CameraAppUI;)V

    return v0
.end method
