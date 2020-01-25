.class Lcom/freeme/camera/feature/mode/slr/SlrMode$2;
.super Ljava/lang/Object;
.source "SlrMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/slr/SlrMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/slr/SlrMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/slr/SlrMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slr/SlrMode$2;->this$0:Lcom/freeme/camera/feature/mode/slr/SlrMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/SlrMode$2;->this$0:Lcom/freeme/camera/feature/mode/slr/SlrMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/slr/SlrMode;->access$600(Lcom/freeme/camera/feature/mode/slr/SlrMode;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slr/SlrMode$2;->this$0:Lcom/freeme/camera/feature/mode/slr/SlrMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/slr/SlrMode;->access$500(Lcom/freeme/camera/feature/mode/slr/SlrMode;)Lcom/freeme/camera/feature/mode/slr/BvirtualView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
