.class Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;
.super Ljava/lang/Object;
.source "IKOActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOActivity;->onLoadFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->stopLoading()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$300(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$400(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$500(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$600(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$700(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://zen.yandex.ru"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
