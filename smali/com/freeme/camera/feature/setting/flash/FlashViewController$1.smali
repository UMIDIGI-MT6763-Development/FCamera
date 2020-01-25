.class Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;
.super Ljava/lang/Object;
.source "FlashViewController.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/flash/FlashViewController;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x22

    if-eq p1, p2, :cond_0

    const/16 p2, 0x23

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
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isSpecialKeyCodeEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x23

    const/16 v1, 0x22

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    iget-object v2, v2, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onKeyUp] mFlashEntryView is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onKeyUp] update flash on"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    const-string p2, "on"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashEntryView(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/feature/setting/flash/Flash;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_4

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onKeyUp] update flash off"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashEntryView(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->access$100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/feature/setting/flash/Flash;

    move-result-object p1

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
