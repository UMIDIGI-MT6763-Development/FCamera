.class Lcom/freeme/camera/feature/setting/CameraSwitcher$1;
.super Ljava/lang/Object;
.source "CameraSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/CameraSwitcher;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
