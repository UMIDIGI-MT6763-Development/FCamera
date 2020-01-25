.class Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2500(Lcom/freeme/camera/ui/CameraAppUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
