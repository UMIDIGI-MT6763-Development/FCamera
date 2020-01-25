.class Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSettingClickedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SettingFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/ui/SettingFragment;->hasVisibleChild()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnSettingClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/CameraAppUI;->access$2900(Lcom/freeme/camera/ui/CameraAppUI;)V

    :cond_0
    return-void
.end method
