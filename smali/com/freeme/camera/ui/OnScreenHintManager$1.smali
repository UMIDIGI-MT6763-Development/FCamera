.class Lcom/freeme/camera/ui/OnScreenHintManager$1;
.super Ljava/lang/Object;
.source "OnScreenHintManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/OnScreenHintManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/OnScreenHintManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$100(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    const-string v0, "1x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$302(Lcom/freeme/camera/ui/OnScreenHintManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    const-string v0, "1x"

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    const-string v0, "1x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$302(Lcom/freeme/camera/ui/OnScreenHintManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    const-string v0, "2x"

    iput-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$400(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$300(Lcom/freeme/camera/ui/OnScreenHintManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;->onZoomHintChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$100(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$1;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
