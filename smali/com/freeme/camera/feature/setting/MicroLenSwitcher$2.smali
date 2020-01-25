.class Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;
.super Ljava/lang/Object;
.source "MicroLenSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->removeViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->access$000(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->access$000(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
