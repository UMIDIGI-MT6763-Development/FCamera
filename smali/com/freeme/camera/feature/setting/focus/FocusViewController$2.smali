.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->showActiveFocusAt(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

.field final synthetic val$viewX:I

.field final synthetic val$viewY:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iput p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewX:I

    iput p3, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->unRegisterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->registerView(Landroid/view/View;I)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[showActiveFocusAt] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewX:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewY:I

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->val$viewY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setFocusLocation(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->startActiveFocus()V

    return-void
.end method
