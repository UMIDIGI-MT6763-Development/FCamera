.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x1d

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1e

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "onKeyUp no need to slide betwwen photo mode and video mode,one mode olny"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->onShutterTextClicked(I)V

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->onShutterTextClicked(I)V

    :cond_4
    :goto_0
    return v2
.end method
