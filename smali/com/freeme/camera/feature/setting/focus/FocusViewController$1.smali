.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->showPassiveFocusAtCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->unRegisterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->registerView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$400(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$500(Lcom/freeme/camera/feature/setting/focus/FocusViewController;[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$600(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_PASSIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setFocusState(Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[showPassiveFocusAtCenter]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->startPassiveFocus()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->centerFocusLocation()V

    :goto_0
    return-void
.end method
