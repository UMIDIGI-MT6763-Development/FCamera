.class Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomKeyEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Lcom/freeme/camera/feature/setting/zoom/Zoom$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x0

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return p2

    :cond_2
    const-string p1, "off"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return p2

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->clearInvalidView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;->onScaleStatus(Z)V

    :cond_4
    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0xa9

    const/16 v1, 0xa8

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "onKeyUp keyCode zoom is OFF"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p2, v2}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2400(Lcom/freeme/camera/feature/setting/zoom/Zoom;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {p2, v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$2400(Lcom/freeme/camera/feature/setting/zoom/Zoom;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_0
    return v2
.end method
