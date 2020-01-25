.class Lcom/freeme/camera/feature/setting/zoom/Zoom$1;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOverrideValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$400(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onZoomLevelUpdate(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$202(Lcom/freeme/camera/feature/setting/zoom/Zoom;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->showView(Ljava/lang/String;)V

    return-void
.end method
