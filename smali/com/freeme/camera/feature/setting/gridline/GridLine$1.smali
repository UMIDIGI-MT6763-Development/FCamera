.class Lcom/freeme/camera/feature/setting/gridline/GridLine$1;
.super Ljava/lang/Object;
.source "GridLine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/gridline/GridLine;->addGridLines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/gridline/GridLine;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$000(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$100(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getGridPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$002(Lcom/freeme/camera/feature/setting/gridline/GridLine;Lcom/freeme/camera/common/widget/PreviewFrameLayout;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$000(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/GridLines;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$202(Lcom/freeme/camera/feature/setting/gridline/GridLine;Lcom/freeme/camera/ui/GridLines;)Lcom/freeme/camera/ui/GridLines;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$200(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/ui/GridLines;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$300(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005e

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$000(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/GridLines;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$202(Lcom/freeme/camera/feature/setting/gridline/GridLine;Lcom/freeme/camera/ui/GridLines;)Lcom/freeme/camera/ui/GridLines;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$000(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$200(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/ui/GridLines;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$400(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;->this$0:Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->access$200(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/ui/GridLines;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method
