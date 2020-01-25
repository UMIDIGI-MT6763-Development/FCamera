.class Lcom/freeme/camera/ui/CameraAppUI$31;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->hideQuickSwitcherOption()V
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

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$31;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$31;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->hideQuickSwitcherOption()V

    return-void
.end method
