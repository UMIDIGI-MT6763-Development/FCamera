.class Lcom/freeme/camera/feature/mode/iko/IKOMode$10;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->initViewStatus()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3900(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
