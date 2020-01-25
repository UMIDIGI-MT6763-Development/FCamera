.class Lcom/freeme/camera/feature/setting/zoom/Zoom$3;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$3;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$3;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$3;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method
