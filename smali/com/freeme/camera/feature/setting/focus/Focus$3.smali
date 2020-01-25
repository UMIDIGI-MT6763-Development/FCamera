.class Lcom/freeme/camera/feature/setting/focus/Focus$3;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->onLongPress(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

.field final synthetic val$isNeeedCancelAutoFocus:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;FFZ)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iput p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$x:F

    iput p3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$y:F

    iput-boolean p4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$isNeeedCancelAutoFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2500(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freeme.camera.feature.mode.panorama.PanoramaMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2500(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freeme.camera.feature.mode.pip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2600(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$x:F

    float-to-int v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->val$isNeeedCancelAutoFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->cancelAutoFocus()V

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$3;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2700(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    return-void
.end method
