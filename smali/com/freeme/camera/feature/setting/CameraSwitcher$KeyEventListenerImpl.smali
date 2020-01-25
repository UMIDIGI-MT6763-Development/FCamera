.class Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;
.super Ljava/lang/Object;
.source "CameraSwitcher.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/CameraSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;Lcom/freeme/camera/feature/setting/CameraSwitcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;-><init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
