.class Lcom/freeme/camera/ui/video/VideoUI$2;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/video/VideoUI;->doUpdateUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/video/VideoUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/video/VideoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI$2;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/video/VideoUI$2;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/video/VideoUI;->access$700(Lcom/freeme/camera/ui/video/VideoUI;)V

    return-void
.end method
