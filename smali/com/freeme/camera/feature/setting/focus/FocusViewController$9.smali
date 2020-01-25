.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->addMultiZoneAfView()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$900(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b006f

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$802(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->registerView(Landroid/view/View;I)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addMultiZoneAfView] mMultiZoneAfView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
