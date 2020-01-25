.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->showGuideView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

.field final synthetic val$guidTextId:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;->val$guidTextId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$1;->val$guidTextId:I

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$000(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V

    return-void
.end method
