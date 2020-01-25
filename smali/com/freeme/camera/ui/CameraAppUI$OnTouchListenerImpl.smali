.class Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3900(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/gesture/GestureManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/CameraAppUI;->getShutterRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v2}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    return v1

    :cond_0
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3900(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/gesture/GestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/gesture/GestureManager;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_2
    return v1
.end method
