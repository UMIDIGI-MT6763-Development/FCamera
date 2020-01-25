.class Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;
.super Ljava/lang/Object;
.source "HdrViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$1100(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const-string p1, "auto"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$1200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideQuickSwitcherOption()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$400(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$300(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/feature/setting/hdr/Hdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onHdrValueChanged(Ljava/lang/String;)V

    return-void
.end method
